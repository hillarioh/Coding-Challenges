function anagram(s) {
    
    let myString = s.toString();
    let first ="";
    let second = "";
    
    if(myString.length % 2 == 0){
        first = myString.substring(0,myString.length /2);
        second = myString.substring(myString.length /2,myString.length);
        let similar =0;
        
        for(let i =0;i<first.length;i++){
            for (let j=0;j<second.length;j++){
                if(first[i]==second[j]){
                    similar +=1;
                    second = second.replace(second[j],"");
                    break;
                }
            }
        }
        
        if (similar ==0){
            return myString.length/2;
        } else {
            return myString.length / 2 - similar;
        }
    } else{
        return -1;
    }

}