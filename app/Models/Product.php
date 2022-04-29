<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table='products';
    protected $fillable = [
        'title',
        'description',
        'price',
        'content',
        'photo',
        'position',
        'display', 
        'category_id',
    ];
    function scopeGetAll(){
        return $this->orderBy('id','asc')->paginate(10);
    }
    function scopeGetByHotProduct(){
        return $this->where('position', 1)->get();
    }
    function scopeGetByPosition(){
        return $this->orderBy('id','asc');
    }
    public function categories()
    {
        return $this->belongsTo(Category::class);
    }
}
