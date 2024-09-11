<div>
    @if (session()->has('status'))
      <div class="alert alert-success">
        {{ session('status') }}
      </div>  
    @endif
    <div class="d-flex justify-content-end">
        <button wire:click.prevent="AddNewCat" class="btn btn-outline-primary"><i class="bi bi-plus-circle"></i> Add Categorie</button>
    </div>
    <div class="card mt-2">
        <div class="card-header">
            Category List
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                   @foreach ( $categories as $key => $cat)
                    <tr>
                        <td>{{$key + 1}}</td>
                        <td>{{$cat->name}}</td>
                        <td>
                            <a class="btn btn-primary btn-sm" wire:click.prevent="Edit({{ $cat }})"><i class="bi bi-pencil-square mr-2"></i></a>
                            <a class="btn btn-danger btn-sm" wire:click.prevent="Delete({{ $cat->id }})" wire:confirm="Do you want to delete this categorie?"><i class="bi bi-trash"></i></a>
                        </td>
                    </tr>
                   @endforeach  
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            {{ $categories->links() }}
        </div>
    </div>
    @include('components.layouts.modalcategory')
</div>

@script
    <script>
        $wire.on('show_modal', ()=>{
            $('#staticBackdrop').modal('show')
        });

        $wire.on('close_modal', ()=>{
            $('#staticBackdrop').modal('hide')
        });
    </script>
@endscript
