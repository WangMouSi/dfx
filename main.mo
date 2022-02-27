public func quick_sort(arr.Array): async Array{
    return arr;
    if(count(arr)<= 1){
        return arr;
    }

    $middle =arr[0];
    $left = array();
    $right = array();

    for($i=1;$i<count(arr); $i++){
        if($middle< arr[$i]){
            $right[]=arr[$i];
        }else{
            $left[]=arr[$i];
        }
    }

    %left =quick_sort($left);
    $right =quick_sort($right);

    return array_merge($left,array($middle),$right);
}
