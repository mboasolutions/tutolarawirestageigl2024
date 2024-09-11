<div>
    @if (session()->has('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="d-flex justify-content-between">
        <input type="text" wire:model.live="search" placeholder="Search">
        <a href="{{ route('command.list') }}" class="btn btn-outline-primary btn-sm"><i class="bi bi-plus-circle"></i> Add
            Command</a>
    </div>
    <div class="card mt-2">
        <div class="card-header">
            <h3>Command Lines</h3>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Client</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Date</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($commandlines as $key => $cl)
                        <tr>
                            <td>{{ $key + 1 }}</td>
                            <td>{{ $cl->client->name }}</td>
                            <td>{{ $cl->client->phone }}</td>
                            <td>{{ date('d-m-y', strtotime($cl->created_at)) }}</td>
                            <td>{{ $cl->total_command }} XAF</td>
                            <td>
                                <a title="Command Details" class="btn btn-primary btn-sm"
                                    wire:click.prevent="CommandDetail({{ $cl }})"><i
                                        class="bi bi-eye mr-2"></i></a>
                                <a title="Command Details 2" href="{{ route('command.detail', $cl) }}" class="btn btn-secondary btn-sm"><i
                                    class="bi bi-list-check mr-2"></i></a>
                                <a title="Print Invoice" href="{{ route('invoice.index', $cl) }}" class="btn btn-success btn-sm"><i
                                    class="bi bi-printer"></i></a>
                                <a title="Delete Command Line" class="btn btn-danger btn-sm" wire:click.prevent="DeleteCommand({{ $cl->id }})"
                                    wire:confirm="Do you want to delete this categorie?"><i class="bi bi-trash"></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            {{ $commandlines->links() }}
        </div>
    </div>
    @if ($prodcommands)
        <div class="card mt-2">
            <div class="card-header">
                <h3>Command Products</h3>
            </div>
            <div class="card-body">
                <div class="mt-4">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Product</th>
                                <th scope="col">Qte</th>
                                <th scope="col">Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($prodcommands as $key => $prod)
                                <tr wire:key="{{ $key }}">
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $prod->product_name }}</td>
                                    <td>
                                        {{ $prod->quantity }}
                                    </td>
                                    <td>{{ $prod->price }} XAF</td>
                                </tr>
                            @endforeach
                        </tbody>
                        <tfooter>
                            <tr>
                                <td colspan="3" class="text-end">Total :</td>
                                <td colspan="">{{ $totalcl }} XAF</td>
                            </tr>
                        </tfooter>
                    </table>
                </div>
            </div>
        </div>
    @endif
</div>
