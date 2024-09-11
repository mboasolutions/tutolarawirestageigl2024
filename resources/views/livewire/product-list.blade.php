<div>
    @if (session()->has('status'))
      <div class="alert alert-success">
        {{ session('status') }}
      </div>  
    @endif
    <div class="d-flex justify-content-end">
        <button wire:click.prevent="AddNewProd" class="btn btn-outline-primary"><i class="bi bi-plus-circle"></i> Add Product</button>
    </div>
    <div class="card mt-2">
        <div class="card-header">
            Product List
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Category</th>
                        <th scope="col">Title</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                   @foreach ( $products as $key => $prod)
                    <tr>
                        <td>{{$key + 1}}</td>
                        <td>{{$prod->category->name}}</td>
                        <td>{{$prod->title}}</td>
                        <td>{{$prod->title}} XAF</td>
                        <td>
                            <a class="btn btn-primary btn-sm" wire:click.prevent="Edit({{ $prod }})"><i class="bi bi-pencil-square mr-2"></i></a>
                            <a class="btn btn-danger btn-sm" wire:click.prevent="Delete({{ $prod->id }})" wire:confirm="Do you want to delete this categorie?"><i class="bi bi-trash"></i></a>
                        </td>
                    </tr>
                   @endforeach  
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            {{ $products->links() }}
        </div>
    </div>
    @include('components.layouts.modalproduct')
</div>

@script
    <script>
        $wire.on('show_prod_modal', ()=>{
            $('#staticBackdrop').modal('show')
        });

        $wire.on('close_prod_modal', ()=>{
            $('#staticBackdrop').modal('hide')
        });
    </script>
@endscript

