@extends('plantilla.plantilla')

@section('titulo', 'Mostrar registro')

@section('contenido')

<div class="container">
    <br>

    @include('agenda.navuser')

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('agenda.index') }}">Inicio</a></li>
            <li class="breadcrumb-item"><a>Mostrar un registro</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{ $agenda->id }}</li>
        </ol>
    </nav>
</div>

<form method="POST" action=" {{ route('agenda.update', $agenda->id) }}">
    @method('PUT')
    @csrf

    <div class="container register">

        <div class="row">
            <div class="col-md-3 register-left">
                <img src="http://www.idaipqroo.org.mx/wp-content/uploads/2018/06/proteccion-de-datos-personales-791x1024.png" alt="" />
                <h3>Bienvenid@</h3>
                <!--<p>Por favor llena los datos correctamente en el sistema!</p>-->

            </div>
            <div class="col-md-9 register-right">

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                        <h3 class="register-heading">Mostrar Registro</h3>

                        <div class="row register-form">

                            <div class="col-md-6">

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                        </div>
                                        <input type="text" class="form-control" id="nombres" name="nombre" placeholder="Nombres" value="{{ $agenda->nombre }}" disabled='true' required="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user-edit text-info"></i></div>
                                        </div>
                                        <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" value="{{ $agenda->apellidos }}" disabled='true' required="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-phone text-info"></i></div>
                                        </div>
                                        <input class="form-control" type="number" name="fijo" placeholder="Fijo: 18491115555" value="{{ $agenda->fijo }}" disabled='true' id="telefono">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-mobile-alt text-info"></i></div>
                                        </div>
                                        <input class="form-control" type="number" name="telefono" placeholder="Telefono: 18491115555" disabled='true' value="{{ $agenda->telefono }}" id="Celular">
                                    </div>
                                </div>

                                @if($agenda->genero == "Masculino")
                                @php ($hombre = 'checked')
                                @php ($mujer = '')
                                @else
                                @php ($hombre = '')
                                @php ($mujer = 'checked')
                                @endif

                                <div class="form-group">
                                    <div class="maxl">
                                        <label class="radio inline">
                                            <input type="radio" name="genero" value="Masculino" {{ $hombre }} disabled='true'>
                                            <span> Masculino </span>
                                        </label>
                                        <label class="radio inline">
                                            <input type="radio" name="genero" value="Femenino" {{ $mujer }} disabled='true'>
                                            <span>Femenino </span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">


                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa  fa-at text-info"></i></div>
                                        </div>
                                        <input type="email" name="email" class="form-control" value="{{ $agenda->email }}" placeholder="Email" disabled='true' />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-address-card text-info"></i></div>
                                        </div>
                                        <input type="text" name="posicion" class="form-control" placeholder="Posición" value="{{ $agenda->posicion }}" disabled='true' />
                                    </div>
                                </div>

                                @php ($departamentos = ['Gerencia de TI', 'Auditoria TI', 'Contabilidad'])

                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-map-marker-alt text-info"></i></div>
                                        </div>
                                        <select disabled='true' name="departamento" class="form-control">
                                            <option class="hidden" selected disabled='true'>Departamento</option>

                                            @foreach($departamentos as $dep)
                                            <option @if($agenda->departamento == $dep)
                                                selected
                                                @endif >{{ $dep }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa  fa-dollar-sign text-info"></i></div>
                                        </div>
                                        <input type="number" class="form-control" name="salario" placeholder="salario *" value="{{ $agenda->salario }}" disabled='true' />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Fecha de nacimiento</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-calendar-alt text-info"></i></div>
                                        </div>

                                        <input type="date" name="fecha_nacimiento" id="fechadenacimiento" min="1000-01-01" max="3000-12-31" class="form-control" value="{{ $agenda->fecha_nacimiento }}" disabled='true'>
                                    </div>
                                </div>

                                <a href="{{ route('agenda.edit', $agenda->id) }}" class="redondo btn btn-success btncolorblanco">
                                    <i class="fa fa-edit"></i> Editar
                                </a>
                                <a href=" {{ route('cancelar')}}" class="redondo btn btn-danger"><i class="fas fa-ban"></i> Cancelar</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>

</form>

@include('plantilla.footer', ['container' => 'container'])

@endsection