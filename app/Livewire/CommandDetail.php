<?php

namespace App\Livewire;

use App\Models\Command;
use Livewire\Component;
use App\Models\CommandLine;
use Livewire\Attributes\On;

class CommandDetail extends Component
{
    public $prodcommands;
    public $total = 0;

    public function mount(CommandLine $cl)
    {
        $this->prodcommands = Command::where('commandline_id', $cl->id)->get();
        $this->total = $cl->total_command;
    }

    #[On('show-command')]
    public function refreshCommand($cl)
    {
        dd($cl);
    }

    public function render()
    {
        return view('livewire.command-detail',
        [
              'prodcommands'=> $this->prodcommands,
              'total'=> $this->total
            ]);
    }
}
