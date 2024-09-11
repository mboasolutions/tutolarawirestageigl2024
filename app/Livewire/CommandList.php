<?php

namespace App\Livewire;

use App\Models\Client;
use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use App\Models\Command;
use App\Models\CommandLine;
use App\Models\CommandProduct;
use Livewire\Attributes\Validate;

class CommandList extends Component
{
    #[Validate('required')]
    public $client_id;
    #[Validate('required')]
    public $category_id = null;
    #[Validate('required')]
    public $cat_products = null;
    public $product_id = [];
    public $products = [];
    public $isAddMode = false;
    public $quantity = [] ;
    public $totalAmount = 0;
    public $comproductsid = [];
    public $comproductsqty = [];
    public $comproductsprice = [];
    public $qty = 0;

    public function updated($property)
    {
        if ($property === 'category_id') {
            $this->cat_products = Product::where('category_id', $this->category_id)->get();
        }

    }

    public function updatedQuantity($value, $key)
    {

        if ($value < 0) {
            $value = 0;
        }

        if ($value > $this->qty) {
            $value = $this->qty;
        }
        /* $this->validate([
            'quantity.$key' => 'required|numeric|gt:0'
        ]); */
        $this->quantity[$key] = $value;

    }

    public function mount()
    {
        $this->products = Product::all();
        foreach ($this->products as $key => $value) {
            $this->quantity[$key] = 0;
        }
    }

    public function AddNewProd()
    {
        $this->validate();
        $this->isAddMode = true;
        $this->product_id = array_map('intval', $this->product_id);
        $this->products = Product::whereIn('id', $this->product_id)->get();
    }

    public function SaveNewProd()
    {
        $this->quantity = array_map('intval', $this->quantity);
        foreach ($this->quantity as $key => $value) {
            if ($value != 0) {
                $newqte[$key] = $value;
            }
        }
        //$this->quantity = array_unique($this->quantity);
        $this->comproductsid=array_unique($this->comproductsid);
        $this->comproductsqty = array_unique($this->comproductsqty);
        $this->comproductsprice = array_unique($this->comproductsprice);
       foreach ($this->comproductsprice as $key => $value) {
            $newcomproductsprice[] = $value;
       }
        foreach ($this->comproductsid as $key => $value) {
            $newcomproductsid[] = $value;
        }

        for ($i=0; $i < count($newqte) ; $i++) {
            $this->totalAmount += $newqte[$i] * $newcomproductsprice[$i];

        }
        // Create Commandline data
        $data = CommandLine::create([
            'client_id' => $this->client_id,
            'total_command' => $this->totalAmount
        ]);

        $prodcommand = Product::whereIn('id', $newcomproductsid)->get();
        // Create Command Data
        foreach ($prodcommand as $key => $prod) {
            Command::create([
                'commandline_id' => $data->id,
                'product_name' =>  $prod->title,
                'quantity' =>  $newqte[$key],
                'price' =>  $prod->price
            ]);

            $prod->qte -=  $newqte[$key];
            //$this->quantity[$key] = 0;
            $prod->save();
        }

        // Create Command product data
        foreach ($newcomproductsid as $key => $value) {
            CommandProduct::create([
                'product_id' => $value,
                'command_id'=> $data->id
            ]);
        }

        $this->redirectRoute('command.list');
        session()->flash('status', 'Command saved successfully');
    }

    public function updateprod($id, $qty, $price)
    {
        $this->qty = $qty;
        $this->comproductsid[] = $id;
        $this->comproductsqty[] = $qty;
        $this->comproductsprice[] = $price;

    }

    public function DeleteProd($key)
    {
        unset($this->products[$key]);
    }

    public function render()
    {
        $data['clients'] = Client::orderBy('name', 'asc')->get();
        $data['categories'] = Category::orderBy('name', 'asc')->get();
        return view('livewire.command-list', $data);
    }

}
