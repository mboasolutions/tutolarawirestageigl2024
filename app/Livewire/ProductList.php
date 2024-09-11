<?php

namespace App\Livewire;

use App\Models\Product;
use Livewire\Component;
use App\Models\Category;
use Livewire\Attributes\Validate;
use Livewire\WithPagination;

class ProductList extends Component
{
    use WithPagination;
    public $isEditMode = false;
    public $product;

    #[Validate('required')]
    public $category_id;
    #[Validate('required|max:20|min:5|unique:products,title')]
    public $title;
    #[Validate('required|integer')]
    public $price;
    #[Validate('required|max:50')]
    public $description;

    public function AddNewProd()
    {
        $this->dispatch('show_prod_modal');
    }

    public function Save()
    {
        $validateData = $this->validate();
        Product::create($validateData);
        $this->reset();
        $this->dispatch('close_prod_modal');
        session()->flash('status', 'Product added successfully');
    }

     public function Edit(Product $prod)
    {
        $this->reset();
        $this->isEditMode = true;
        //dd($this->isEditMode);
        $this->product = $prod;
        $this->category_id = $prod->category_id;
        $this->title = $prod->title;
        $this->price = $prod->price;
        $this->description = $prod->description;
        $this->dispatch('show_prod_modal');
    }

    public function Update()
    {
        $validatedData = $this->validate();
        $this->product->update($validatedData);
        $this->isEditMode = false;
        $this->reset();
        session()->flash('status', 'product updated successfully');
        $this->dispatch('close_prod_modal');
    }

    public function Delete($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();
        session()->flash('status', 'Product deleted successfully');
    }


    public function render()
    {
        $data['categories'] = Category::orderBy('name', 'asc')->get();
        $data['products'] = Product::latest()->paginate(5);
        //$categories = Category::orderBy('name', 'desc')->get();
        //$products = Product::latest()->paginate(10);
        //compact('', ''...)
        //['cle'=>$variable, 'key'=>$variable ...]
        return view('livewire.product-list', $data);
    }
}
