function pageCount(n, p) {
    /*
     * Write your code here.
     */
    
    let turn =0;
    
    if(p>n/2){
        if(n%2==0){
            turn =Math.floor((n-p+1)/2);
        } else {
            turn=Math.floor((n-p)/2);
        }
        
    }else{
        turn = Math.floor(p/2)
    }
    return turn;

}