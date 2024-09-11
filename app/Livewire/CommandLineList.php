<?php

namespace App\Livewire;

use App\Models\Command;
use Livewire\Component;
use App\Models\CommandLine;
use App\Models\CommandProduct;
use Livewire\WithPagination;
use Livewire\Attributes\Computed;
use Illuminate\Database\Query\Builder;

class CommandLineList extends Component
{
    use WithPagination;

    public $prodcommands;
    public $totalcl = 0;
    public $search;
    public $pagination = 5;

    public function CommandDetail(CommandLine $cl)
    {
        $this->prodcommands = Command::where('commandline_id', $cl->id)->get();
        $this->totalcl = $cl->total_command;
    }

    public function DeleteCommand($id)
    {
        $commandprods = CommandProduct::where('command_id', $id)->get();
        $commands = Command::where('commandline_id', $id)->get();
        $commandline = CommandLine::findOrFail($id);
        foreach ($commandprods as $key => $value) {
            $commandprods[$key]->delete();
        }
        foreach ($commands as $key => $value) {
            $commands[$key]->delete();
        }
        $commandline->delete();
        session()->flash('status', 'Commandline deleted successfully');
    }

    public function render()
    {
        if(!$this->search){
            $commandlines = CommandLine::orderBy('created_at', 'desc')->paginate($this->pagination);
        }else{
            $commandlines = CommandLine::with('client')
            ->whereHas('client', function ($query) {
                $query->where('name', 'like', '%'.$this->search.'%');
            })
            ->orWhereHas('client', function ($query) {
                $query->where('phone', 'like', '%'.$this->search.'%');
            })
            ->orWhere('total_command', '=', $this->search)
            ->orWhere('created_at', 'like', '%'.$this->search.'%')
            ->orderBy('created_at', 'desc')->paginate($this->pagination);
        }
        //$commandlines = CommandLine::orderBy('created_at', 'desc')->paginate(5);
        //dd($commandlines); , compact('commandlines')
        return view('livewire.command-line-list', compact('commandlines'));
    }

}
