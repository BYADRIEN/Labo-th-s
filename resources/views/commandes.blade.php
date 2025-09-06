@extends('welcome')

@section('content')
<div class="container mt-3">
    <div class="card shadow-sm border-0">

        {{-- Header --}}
        <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0">
                <i class="fa-solid fa-box"></i> Mes Commandes
            </h4>

            <div class="dropdown">
                <button class="btn btn-light dropdown-toggle btn-sm" type="button" id="statusDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa-solid fa-filter"></i> Filtrer
                </button>
                <ul class="dropdown-menu" aria-labelledby="statusDropdown">
                    <li><a class="dropdown-item {{ request('status') == '' ? 'active' : '' }}" href="{{ route('commandes') }}"><i class="fa-solid fa-list"></i> Toutes</a></li>
                    <li><a class="dropdown-item {{ request('status') == 'pending' ? 'active' : '' }}" href="{{ route('commandes', ['status' => 'pending']) }}"><i class="fa-solid fa-hourglass-half"></i> En cours</a></li>
                    <li><a class="dropdown-item {{ request('status') == 'completed' ? 'active' : '' }}" href="{{ route('commandes', ['status' => 'completed']) }}"><i class="fa-solid fa-circle-check"></i> Terminées</a></li>
                    <li><a class="dropdown-item {{ request('status') == 'received' ? 'active' : '' }}" href="{{ route('commandes', ['status' => 'received']) }}"><i class="fa-solid fa-truck"></i> Reçues</a></li>
                    <li><a class="dropdown-item {{ request('status') == 'cancelled' ? 'active' : '' }}" href="{{ route('commandes', ['status' => 'cancelled']) }}"><i class="fa-solid fa-ban"></i> Annulées</a></li>
                </ul>
            </div>
        </div>

        {{-- Body --}}
        <div class="card-body p-2 p-md-3">
            @if(isset($orders) && $orders->isNotEmpty())

                {{-- Version web --}}
                <div class="d-none d-md-block table-responsive">
                    <table class="table table-hover align-middle text-nowrap">
                        <thead class="bg-light">
                            <tr>
                                <th>#</th>
                                <th>État</th>
                                <th>Date</th>
                                <th>Détails</th>
                                <th>Adresse</th>
                                <th>Client</th>
                                <th>Téléphone</th>
                                <th>Prix</th>
                                @role('admin')<th>Action</th>@endrole
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($orders as $commande)
                                @php
                                    $days = \Carbon\Carbon::now()->diffInDays($commande->created_at);
                                @endphp
                                <tr>
                                    <td>#{{ $commande->id }}</td>
                                    <td>
                                        @php
                                            switch($commande->status) {
                                                case 'pending':   $statusClass = 'bg-warning text-dark'; $icon = 'fa-hourglass-half'; break;
                                                case 'received':  $statusClass = 'bg-info text-white';   $icon = 'fa-truck'; break;
                                                case 'completed': $statusClass = 'bg-success';           $icon = 'fa-circle-check'; break;
                                                case 'cancelled': $statusClass = 'bg-danger';            $icon = 'fa-ban'; break;
                                                default:          $statusClass = 'bg-secondary';         $icon = 'fa-question-circle';
                                            }
                                        @endphp
                                        <span class="badge {{ $statusClass }}"><i class="fa-solid {{ $icon }}"></i> {{ ucfirst($commande->status) }}</span>
                                    </td>
                                    <td>
                                        <span class="{{ $commande->status === 'completed' && $days > 5 ? 'text-danger fw-bold' : '' }}">
                                            {{ $commande->created_at->format('d/m/Y H:i') }}
                                        </span>
                                        @if($commande->status === 'completed' && $days > 5)
                                            <i class="fa-solid fa-clock text-danger ms-1" title="Commande complétée depuis plus de 5 jours"></i>
                                        @endif
                                    </td>
                                    <td><a href="{{ route('orders.items', $commande->id) }}" class="btn btn-sm btn-outline-info rounded-pill"><i class="fa-solid fa-eye"></i> Voir</a></td>
                                    <td>{{ $commande->adress }}</td>
                                    <td>{{ $commande->fullname }}</td>
                                    <td>{{ $commande->phone }}</td>
                                    <td>{{ $commande->price }} €</td>
                                    @role('admin')
                                        <td>
                                            <form action="{{ route('admin.change_status', $commande->id) }}" method="post" class="d-flex flex-column flex-md-row gap-1">
                                                @csrf
                                                <select name="status" class="form-select form-select-sm" @if($commande->status === 'cancelled') disabled @endif>
                                                    <option value="pending"   {{ $commande->status == 'pending' ? 'selected' : '' }}>Pending</option>
                                                    <option value="received"  {{ $commande->status == 'received' ? 'selected' : '' }}>Received</option>
                                                    <option value="completed" {{ $commande->status == 'completed' ? 'selected' : '' }}>Completed</option>
                                                    <option value="cancelled" {{ $commande->status == 'cancelled' ? 'selected' : '' }}>Cancelled</option>
                                                </select>
                                                <button type="submit" class="btn btn-sm btn-success mt-1" onclick="return confirm('Confirmer ?')" @if($commande->status === 'cancelled') disabled @endif>
                                                    <i class="fa-solid fa-check"></i>
                                                </button>
                                            </form>
                                        </td>
                                    @endrole
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                {{-- Version mobile --}}
                <div class="d-block d-md-none">
                    @foreach($orders as $commande)
                        @php
                            $days = \Carbon\Carbon::now()->diffInDays($commande->created_at);
                        @endphp
                        <div class="card mb-3 shadow-sm">
                            <div class="card-body p-2">
                                <h6 class="fw-bold mb-1">#{{ $commande->id }} - {{ ucfirst($commande->status) }}</h6>
                                <p class="mb-1">
                                    <i class="fa-solid fa-calendar"></i>
                                    <span class="{{ $commande->status === 'completed' && $days > 5 ? 'text-danger fw-bold' : '' }}">
                                        {{ $commande->created_at->format('d/m/Y H:i') }}
                                    </span>
                                    @if($commande->status === 'completed' && $days > 5)
                                        <i class="fa-solid fa-clock text-danger ms-1" title="Commande complétée depuis plus de 5 jours"></i>
                                    @endif
                                </p>
                                <p class="mb-1"><i class="fa-solid fa-location-dot"></i> {{ $commande->adress }}</p>
                                <p class="mb-1"><i class="fa-solid fa-user"></i> {{ $commande->fullname }}</p>
                                <p class="mb-1"><i class="fa-solid fa-phone"></i> {{ $commande->phone }}</p>
                                <p class="fw-bold text-success mb-2"><i class="fa-solid fa-euro-sign"></i> {{ $commande->price }} €</p>
                                <a href="{{ route('orders.items', $commande->id) }}" class="btn btn-sm btn-outline-info w-100 mb-1"><i class="fa-solid fa-eye"></i> Voir détails</a>
                                @role('admin')
                                    <form action="{{ route('admin.change_status', $commande->id) }}" method="post" class="d-flex flex-column gap-1">
                                        @csrf
                                        <select name="status" class="form-select form-select-sm" @if($commande->status === 'cancelled') disabled @endif>
                                            <option value="pending"   {{ $commande->status == 'pending' ? 'selected' : '' }}>Pending</option>
                                            <option value="received"  {{ $commande->status == 'received' ? 'selected' : '' }}>Received</option>
                                            <option value="completed" {{ $commande->status == 'completed' ? 'selected' : '' }}>Completed</option>
                                            <option value="cancelled" {{ $commande->status == 'cancelled' ? 'selected' : '' }}>Cancelled</option>
                                        </select>
                                        <button type="submit" class="btn btn-sm btn-success mt-1" onclick="return confirm('Confirmer ?')" @if($commande->status === 'cancelled') disabled @endif>
                                            <i class="fa-solid fa-check"></i>
                                        </button>
                                    </form>
                                @endrole
                            </div>
                        </div>
                    @endforeach
                </div>

            @else
                <div class="alert alert-info text-center" role="alert">
                    <i class="fa-solid fa-circle-exclamation"></i> Vous n'avez pas encore passé de commande ou vous n'êtes pas connecté.
                </div>
            @endif
        </div>

        {{-- Footer --}}
        <div class="card-footer text-end">
            <a href="{{ route('dashboard') }}" class="btn btn-secondary rounded-pill">
                <i class="fa-solid fa-shop"></i> Retour à la dashboard
            </a>
        </div>

    </div>
</div>
@endsection