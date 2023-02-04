@extends('layouts.app')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Proizvodi</h2>
            </div>
            <div class="pull-right">
                @can('product-create')
                <a class="btn btn-success" href="{{ route('products.create') }}"> Dodaj novi proizvod</a>
                @endcan
            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif


    <table class="table table-bordered">
        <tr>
            <th>Broj</th>
            <th>Ime</th>
            <th>Detaljno</th>
            <th width="280px">Radnja</th>
        </tr>
	    @foreach ($products as $product)
	    <tr>
	        <td>{{ ++$i }}</td>
	        <td>{{ $product->name }}</td>
	        <td>{{ $product->detail }}</td>
	        <td>
                <form action="{{ route('products.destroy',$product->id) }}" method="POST">
                    <a class="btn btn-info" href="{{ route('products.show',$product->id) }}">Prikazi</a>
                    @can('product-edit')
                    <a class="btn btn-primary" href="{{ route('products.edit',$product->id) }}">Uredi</a>
                    @endcan


                    @csrf
                    @method('DELETE')
                    @can('product-delete')
                    <button type="submit" class="btn btn-danger">Obrisi</button>
                    @endcan
                </form>
	        </td>
	    </tr>
	    @endforeach
    </table>


    {!! $products->links() !!}
@endsection