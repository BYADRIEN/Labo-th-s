<h1>création du truc</h1>

<form action="{{ url('insert-data') }}" method="POST">
    @csrf
    <label for="">Title</label>
    <input class="form-control form-control-lg" type="text" name="title">
    <label for="">Content</label>
    <input class="form-control" type="text" name="content">
    <button type="submit">créee le truc</button>
    <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label=".form-control-lg example" name="slug">
</form>
