<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class RoleController extends Controller
{
    public function index()
    {
        $roles = Role::all();
        return view('role-permission.roles.index', compact('roles'));
    }

    public function create()
    {
        return view('role-permission.roles.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'unique:roles,name']
        ]);

        Role::create(['name' => $request->name]);

        return redirect()->route('roles.index')->with('success', 'Role created successfully');
    }

    public function edit(Role $role)
    {
        return view('role-permission.roles.edit', compact('role'));
    }

    public function update(Request $request, Role $role)
    {
        $request->validate([
            'name' => ['required', 'string', 'unique:roles,name,' . $role->id]
        ]);

        $role->update(['name' => $request->name]);

        return redirect()->route('roles.index')->with('success', 'Role updated successfully');
    }

    public function destroy($roleId)
    {
        $role = Role::find($roleId);

        if (!$role) {
            return redirect()->route('roles.index')->with('error', 'Role not found');
        }

        $role->delete();

        return redirect()->route('roles.index')->with('success', 'Role deleted successfully');
    }
}
