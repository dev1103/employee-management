<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Http\Requests\EmployeeRequest;
use Yajra\DataTables\Facades\DataTables;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Employee::get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('name', function($row){
                    return $row->first_name . ' ' . $row->last_name;
                })
                ->addColumn('mobile', function($row){
                    return '+' . $row->country_code . ' ' . $row->mobile;
                })
                ->addColumn('action', function($row){
                    $btn = '<a href="'. route("employee.edit", $row->id) .'" class="show btn btn-info btn-sm">Edit</a>';
                    $btn .= ' <a href="javascript:void(0)" class="delete btn btn-danger btn-sm deleteEmployee" data-id="'.$row->id.'">Delete</a>';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('employee.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $countries = Country::all();
        return view("employee.create",compact('countries'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(EmployeeRequest $request)
    {
        try {
            if(!empty($request->file('file'))){
                $file = $request->file('file');
                $newName = uniqid('uploaded-', true) . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('images'), $newName);
                $request->merge(['photo' => $newName]);
            }
            $request['hobby'] = implode(',', $request['hobby']);
            $data = $request->except('file');
            Employee::create($data); //Employee store
            return redirect()->route('employee.index')->with('success','Employee created successfully');
        } catch (\Throwable $th) {
            throw $th;
        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(Employee $employee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Employee $employee)
    {
        $countries = Country::all();
        $employee['hobby'] = explode(',', $employee->hobby);
        return view("employee.edit",compact(['employee','countries']));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(EmployeeRequest $request, Employee $employee)
    {
        try {
            if(!empty($request->file('file'))){
                $file = $request->file('file');
                $newName = uniqid('uploaded-', true) . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('images'), $newName);
                $request->merge(['photo' => $newName]);
            }
            $request['hobby'] = implode(',', $request['hobby']);
            $data = $request->except('file');
            $employee->update($data); //Employee update
            return redirect()->route('employee.index')->with('success','Employee updated successfully');
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Employee $employee)
    {
        $employee->delete();
        return response()->json(['success'=>'Employee deleted successfully.']);
    }
}
