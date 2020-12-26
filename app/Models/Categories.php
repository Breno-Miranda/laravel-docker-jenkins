<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{   
    // parentId
    public function parentId()
    {
       return $this->belongsTo('App\Models\Categories', 'parent_id');
    }
}
