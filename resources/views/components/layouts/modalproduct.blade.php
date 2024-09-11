<!-- Modal -->
<div wire:ignore.self class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">
                    {{ $isEditMode ? 'Edit Product' : 'Add Product' }}</h1>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label class="form-label">Category</label>
                        <select class="form-select @error('category_id') is-invalid @enderror" wire:model.defer="category_id">
                            <option value="">Select Category</option>
                            @foreach ($categories as $cat)
                                <option value="{{$cat->id}}">{{$cat->name}}</option> 
                            @endforeach   
                        </select>
                        @error('category_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" wire:model.defer="title"
                            class="form-control @error('title') is-invalid @enderror" id="title"
                            placeholder="Title">
                        @error('title')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Title</label>
                        <input type="number" wire:model.defer="price"
                            class="form-control @error('price') is-invalid @enderror" id="price"
                            placeholder="Price">
                        @error('price')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control @error('description') is-invalid @enderror" rows="3"
                            wire:model.defer="description"></textarea>
                        @error('description')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button wire:click.prevent={{ $isEditMode ? 'Update' : 'Save' }}
                    class="btn btn-primary">{{ $isEditMode ? 'Update' : 'Save' }}</button>
            </div>
        </div>
    </div>
</div>
