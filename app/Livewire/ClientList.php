<?php

namespace App\Livewire;

use App\Models\Client;
use Illuminate\Support\Facades\Validator;
use Livewire\Component;
use Livewire\WithPagination;

class ClientList extends Component
{
    use WithPagination;

    public $state = [];
    public $isEditMode = false;
    public $isDeleteMode = false;
    public $client;

    public function Create()
    {
        $validatedData = Validator::make($this->state, 
        [
           'name' => 'required|min:5|max:20|unique:clients,name',
           'address'=> 'required',
           'phone'=> 'required',
           'email'=> 'required|email' 
        ])->validate();
        Client::create($validatedData);
        session()->flash('status', 'Client created successfully');
        $this->reset();
    }


    public function Edit( Client $client)
    {
        $this->isEditMode = true;
        $this->client = $client;
        $this->state = $client->toArray();
    }

    public function Update()
    {
        $validatedData = Validator::make(
            $this->state,
            [
                'name' => 'required|min:5|max:20|unique:clients,name,'.$this->client->id,
                'address' => 'required',
                'phone' => 'required',
                'email' => 'required|email'
            ]
        )->validate();

        $this->client->update($validatedData);
        $this->isEditMode = false;
        session()->flash('status', 'Client updated successfully');
        $this->reset();
    }

    public function Delete($id)
    {
        $this->isDeleteMode = true;
        $this->client = Client::findOrFail($id)->delete();
        session()->flash('status', 'Client delete successfully');
    }

    public function render()
    {
        $clients = Client::latest()->paginate(5);
        return view('livewire.client-list', compact('clients'));
    }
}
