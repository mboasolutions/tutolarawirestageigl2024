<div>
    <div class="card mt-2">
        @if (session()->has('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
        <div class="card-header">
            Command
        </div>
        <div class="card-body">
            <form>
                <div class="row">
                    <div class="col-8 mb-3">
                        <label class="form-label">Client</label>
                        <select class="form-select @error('client_id') is-invalid @enderror" wire:model.defer="client_id">
                            <option value="">Select Client</option>
                            @foreach ($clients as $client)
                                <option value="{{ $client->id }}">{{ $client->name }}</option>
                            @endforeach
                        </select>
                        @error('client_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="row">
                    <div class="col-8 mb-3">
                        <label class="form-label">Category</label>
                        <select class="form-select @error('category_id') is-invalid @enderror"
                            wire:model.live="category_id">
                            <option value="">Select Category</option>
                            @foreach ($categories as $cat)
                                <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                            @endforeach
                        </select>
                        @error('category_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                @if ($category_id)
                    <div class="row g-2 align-items-center">
                        <div class="col-8">
                            <label class="form-label">Product</label>
                            <select multiple class="form-select @error('product_id') is-invalid @enderror"
                                wire:model.defer="product_id">
                                <option value="">Select Products</option>
                                @foreach ($cat_products as $cat_prod)
                                    <option value="{{ $cat_prod->id }}">{{ $cat_prod->title }}</option>
                                @endforeach
                            </select>
                            @error('product_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="col-auto">
                            <button wire:click.prevent="AddNewProd" class="btn btn-outline-primary"
                                style="margin-top: 2em;"><i class="bi bi-plus-circle"></i> Add</button>
                        </div>
                        <div class="col-auto">
                            <button wire:click.prevent="SaveNewProd" class="btn btn-outline-success"
                                style="margin-top: 2em;"><i class="bi bi-save2"></i> Save</button>
                        </div>
                    </div>
                @endif
            </form>
            @if ($isAddMode)
                <div class="mt-4">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Product</th>
                                <th scope="col">Qte</th>
                                <th scope="col">Price</th>
                                <th scope="col">Total</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $total = 0;
                            @endphp
                            @foreach ($products as $key => $prod)
                                <tr wire:key="{{ $key }}">
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $prod->title }}</td>
                                    <td>
                                        <input type="number" wire:model.live="quantity.{{$key}}" wire:change="updateprod({{$prod->id}},{{$prod->qte}},{{$prod->price}})"><br>
                                       {{--  @error('quantity.$key')
                                            <span class="text-danger">
                                                {{ $message }}
                                            </span>
                                        @enderror --}}
                                    </td>
                                    <td>{{  $prod->price }} XAF</td>
                                    <td>
                                        {{  (int)$quantity[$key]*(int)$prod->price }}
                                    </td>
                                    <td>
                                        <a class="btn btn-danger btn-sm"
                                            wire:click.prevent="DeleteProd({{ $key }})"
                                            ><i class="bi bi-trash"></i>-</a>
                                    </td>
                                </tr>
                                @php
                                    $total +=  (int)$quantity[$key]*(int)$prod->price;
                                @endphp
                            @endforeach
                        </tbody>
                        @if (isset($total))
                            <tfooter>
                                <tr>
                                    <td colspan="4" class="text-end">Total :</td>
                                    <td colspan="2">{{ $total }} XAF</td>
                                    <input type="text" wire:model="totalAmount" id="myinput" value="{{ $total }}" hidden>
                                </tr>
                            </tfooter>
                        @endif
                    </table>
                </div>
            @endif
        </div>
    </div>
</div>

