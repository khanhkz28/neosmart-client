<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Pagination\Paginator;
class Faq extends Model
{
    use HasFactory;
    protected $table='faq';
    protected $fillable = [
        'title',
        'content',
        'display'
    ];
    function scopeGetAllFooter(){
        return $this->orderBy('id','asc')->paginate(3);
    }
    function scopeGetAll(){
        return $this->orderBy('id','asc')->paginate(10);
    }
}
