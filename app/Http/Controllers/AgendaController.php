<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Agenda;

class AgendaController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
        //$this->middleware('auth')->only(['create']);
        //$this->middleware('auth', ['only' => 'create']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $buscar = $request->get("buscarpor");
        $tipo = $request->get("tipo");

        //$variablesurl = $request->all();
        //$variablesurl = $request->input();
        //$variablesurl = $request->except(['page']);
        //$variablesurl = $request->only(['tipo', 'buscarpor']);
        //$variablesurl = $_GET;

        /*$variablesurl = [
            'tipo' => $tipo,
            'buscarpor' => $buscar
        ];*/

        //$agenda = Agenda::buscarpor($tipo, $buscar)->paginate(5)->appends($variablesurl);
        $agenda = Agenda::buscarpor($tipo, $buscar)->paginate(5);
        return view('agenda.index')->with('agenda', $agenda);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('agenda.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $agenda = new Agenda;
        $agenda->nombre = $request->nombre;
        $agenda->apellidos = $request->apellidos;
        $agenda->email = $request->email;
        $agenda->fijo = $request->fijo;
        $agenda->telefono = $request->telefono;
        $agenda->posicion = $request->posicion;
        $agenda->genero = $request->genero;
        $agenda->departamento = $request->departamento;
        $agenda->salario = $request->salario;
        $agenda->fecha_nacimiento = $request->fecha_nacimiento;
        $agenda->save();
        
        return redirect()->route('agenda.index')->with('datos', 'Registro guardado correctamente!');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $agenda = Agenda::findOrFail($id);
        return view('agenda.show', compact('agenda'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $agenda = Agenda::findOrFail($id);
        return view('agenda.edit', compact('agenda'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $agenda = Agenda::findOrFail($id);
        $agenda->nombre = $request->nombre;
        $agenda->apellidos = $request->apellidos;
        $agenda->email = $request->email;
        $agenda->fijo = $request->fijo;
        $agenda->telefono = $request->telefono;
        $agenda->posicion = $request->posicion;
        $agenda->genero = $request->genero;
        $agenda->departamento = $request->departamento;
        $agenda->salario = $request->salario;
        $agenda->fecha_nacimiento = $request->fecha_nacimiento;
        $agenda->save();
        
        return redirect()->route('agenda.index')->with('datos', 'Registro actualizado correctamente!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $agenda = Agenda::findOrFail($id);
        $agenda->delete();
        return redirect()->route('agenda.index')->with('datos', 'Registro eliminado correctamente!');
    }

    public function confirm($id)
    {
        $agenda = Agenda::findOrFail($id);
        return view('agenda.confirm', compact('agenda'));
    }
}
