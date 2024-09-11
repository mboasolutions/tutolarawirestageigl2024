<!-- Modal -->
<div wire:ignore.self class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">{{ $isEditMode ? "Edit Category" : "Add Category"}}</h1>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" wire:model.defer="name" class="form-control @error('name') is-invalid @enderror"     
                        id="name" placeholder="name">
                        @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button wire:click.prevent={{ $isEditMode ? "Update" : "Save"}} class="btn btn-primary">{{ $isEditMode ? "Update" : "Save"}}</button>
            </div>
        </div>
    </div>
</div>
