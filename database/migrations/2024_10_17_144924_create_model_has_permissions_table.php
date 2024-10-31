<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateModelHasPermissionsTable extends Migration
{
    public function up()
    {
        $columnNames = config('permission.column_names');

        if (is_null($columnNames) || !isset($columnNames['role_pivot_key']) || !isset($columnNames['permission_pivot_key'])) {
            throw new \Exception('Error: Required column names are not defined in config/permission.php.');
        }
        Schema::create('model_has_permissions', function (Blueprint $table) {
            $table->unsignedBigInteger('permission_id');
            $table->string('model_type');
            $table->unsignedBigInteger('model_id');

            $table->foreign('permission_id')
                ->references('id')->on('permissions')
                ->onDelete('cascade');

            $table->primary(['permission_id', 'model_id', 'model_type']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('model_has_permissions');
    }
}
