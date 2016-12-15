Difference(int[] arr){
       this.elements = arr;
   }
   public void computeDifference(){
       maximumDifference =0;
       for(int i=0;i<elements.length;i++)
           {
               for(int j= i+1;j<elements.length;j++)
                   {
                       if(Math.abs(elements[i]-elements[j])>maximumDifference)
                           {
                               maximumDifference = Math.abs(elements[i]-elements[j]);
                       }
               }
       }
   }
