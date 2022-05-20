<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;
    protected $table='blog';
    protected $fillable = [
        'title',
        'detail',
        'description',
        'content',
        'photo',
        'slug',
        'position',
        'display' ,
        'listblog_id' 
    ];
    function scopeGetAll(){
        return $this->orderBy('id','desc')->paginate(3);
    }
    function ListBlog(){
        return $this->belongsTo(
            ListBlog::class,'listblog_id'
        );
    }
    function scopeGetByHotBlog(){
        return $this->orderBy('id','desc')->where('position', 1)->paginate(5);
    }
}
