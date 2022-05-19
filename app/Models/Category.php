<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table='categories';
    protected $fillable = [
        'title',
        'description'
    ];
    function Product(){
        return $this->hasMany(Product::class,'category_id','id');
    }
    function scopeGetByHotCategory(){
        return $this->orderBy('id','desc')->get();
    }
    
}
