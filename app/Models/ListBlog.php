<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListBlog extends Model
{
    use HasFactory;
    protected $table='listblog';
    protected $fillable = [
        'title',
        'description'
    ];

    function scopeGetAll(){
        return $this->orderBy('id','asc')->paginate(10);
    }
    function Blog(){
        return $this->hasMany(Blog::class,'listblog_id','id');
    }
}
