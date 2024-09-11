<div>
    <div class="row">
        @if (session()->has('status'))
            <div class="alert alert-{{ $isDeleteMode ? 'danger' : 'success' }}">
                {{ session('status') }}
            </div>
        @endif
        <div class="col-4">
            <div class="card mt-2">
                <div class="card-header">
                    {{ $isEditMode ? 'Edit Client' : 'Create Client' }}
                </div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" wire:model.defer="state.name"
                                class="form-control @error('name') is-invalid @enderror" id="name"
                                placeholder="Client Name">
                            @error('name')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" wire:model.defer="state.address"
                                class="form-control @error('address') is-invalid @enderror" id="address"
                                placeholder="Address">
                            @error('address')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" wire:model.defer="state.phone"
                                class="form-control @error('phone') is-invalid @enderror" id="phone"
                                placeholder="Phone">
                            @error('phone')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" wire:model.defer="state.email"
                                class="form-control @error('email') is-invalid @enderror" id="email"
                                placeholder="Email">
                            @error('email')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="text-end">
                            <button wire:click.prevent={{ $isEditMode ? 'Update' : 'Create' }}
                                class="btn btn-primary">{{ $isEditMode ? 'Update' : 'Create' }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-8">
            <div class="card mt-2">
                <div class="card-header">
                    Client List
                </div>
                <div class="card-body">
                    <table class="table table-striped table-responsive">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Address</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($clients as $client)
                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>{{ $client->name }}</td>
                                    <td>{{ $client->email }}</td>
                                    <td>{{ $client->phone }}</td>
                                    <td>{{ $client->address }}</td>
                                    <td>
                                        <a class="btn btn-primary btn-sm"
                                            wire:click.prevent="Edit({{ $client }})"><i
                                                class="bi bi-pencil-square mr-2"></i></a>
                                        <a class="btn btn-danger btn-sm"
                                            wire:click.prevent="Delete({{ $client->id }})"
                                            wire:confirm="Do you want to delete this client?"><i
                                                class="bi bi-trash"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    {{ $clients->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
