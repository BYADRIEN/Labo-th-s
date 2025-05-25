<?php

namespace App\Http\Controllers;

use Spatie\Permission\Models\Permission;

use App\Http\Controllers\Controller;

//use App\Models\Permission;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    public function index()
    {
        $permissions = Permission::get();
        return view('role-permission.index', [
            'permissions' => $permissions
        ]);
    }

    public function create()
    {
        return view('role-permission.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'unique:permissions,name'
            ]]);
        Permission::create([
            'name' => $request->name
        ]);
        return redirect()->route('permissions.index')->with('success', 'Permission created successfully');
    }

    public function edit(Permission $permission)
    {
        return view('role-permission.edit', [
            'permission' => $permission
        ]);
    }

    public function update(Request $request, Permission $permission)
    {
        $request->validate([
            'name' => [
                'required',
                'string',
                'unique:permissions,name,' . $permission->id
            ]
        ]);
        $permission->update([
            'name' => $request->name
        ]);
        return redirect()->route('permissions.index')->with('success', 'Permission created successfully');
    }

    public function destroy($permissionId)
    {
$permissionI = Permission::find($permissionId);
$permissionI->delete();
        return redirect()->route('permissions.index')->with('success', 'Permission created successfully');
    }
}
