<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Category;
use Livewire\Attributes\Validate;
use Livewire\WithPagination;

class CategoryList extends Component
{
    use WithPagination;
    public $isEditMode = false;
    public $category;

    #[Validate('required|max:20|min:5|unique:categories,name')]
    public $name;

    public function AddNewCat()
    {
        $this->dispatch('show_modal');
    }

    public function Save()
    {
        $validatedData = $this->validate();
        Category::create($validatedData);
        $this->reset();
        session()->flash('status', 'Category added successfully');
        $this->dispatch('close_modal');
    }

    public function Edit(Category $cat)
    {
        $this->reset();
        $this->isEditMode = true;
        $this->category = $cat;
        $this->name = $cat->name;
        $this->dispatch('show_modal');
    }

    public function Update()
    {
        $validatedData = $this->validate();
        $this->category->update($validatedData);
        $this->isEditMode = false;
        $this->reset();
        session()->flash('status', 'Category updated successfully');
        $this->dispatch('close_modal');
    }

    public function Delete($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        session()->flash('status', 'Category deleted successfully');
    }

    public function render()
    {
        $categories = Category::latest()->paginate(10);
        return view('livewire.category-list', ['categories'=> $categories]);
    }
}
