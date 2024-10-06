<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog_articles', function(Blueprint $table) { // Nous demandons la création de la table 'blog_articles'
            $table->increments('id'); // Création d'un champ 'id' auto-incrémenté
            $table->string('titre', 255); // Création d'un champ texte 'titre' de 255 caractères
            $table->longText('contenu'); // Création d'un champ texte long 'contenu'
            $table->date('date_article'); // Création d'un champ 'date_article' de type date
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('blog_articles'); // Suppression de la table 'blog_articles'
    }
}
