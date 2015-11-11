function setCategory2(){
      form = document.search;
      if(document.search.category1.value == "서울"){
         form.category2.length = 1;
         form.category2.options[1] = new Option("마포구");
         form.category2.options[1].value = "마포구";
         form.category2.options[2] = new Option("노원구");
         form.category2.options[2].value = "노원구";
      }
      if(document.search.category1.value == "대전"){
          form.category2.length = 2;
          form.category2.options[1] = new Option("유성구");
          form.category2.options[1].value = "유성구";
          form.category2.options[2] = new Option("대덕구");
          form.category2.options[2].value = "대덕구";
          form.category2.options[3] = new Option("서구");
          form.category2.options[3].value = "서구";
       }
     
      if(document.search.category1.value == "울산"){
         form.category2.length = 4;
         form.category2.options[1] = new Option("중구");
         form.category2.options[1].value = "중구";
         form.category2.options[2] = new Option("동구");
         form.category2.options[2].value = "동구";
         form.category2.options[3] = new Option("울주구");
         form.category2.options[3].value = "울주구";
         form.category2.options[4] = new Option("남구");
         form.category2.options[4].value = "남구";
         form.category2.options[5] = new Option("북구");
         form.category2.options[5].value = "북구";
   }
      if(document.search.category1.value == "광주"){
          form.category2.length = 4;
          form.category2.options[1] = new Option("동구");
          form.category2.options[1].value = "동구";
          form.category2.options[2] = new Option("남구");
          form.category2.options[2].value = "남구";
          form.category2.options[3] = new Option("서구");
          form.category2.options[3].value = "서구";
          form.category2.options[4] = new Option("북구");
          form.category2.options[4].value = "북구";
          form.category2.options[5] = new Option("광산구");
          form.category2.options[5].value = "광산구";
    }
      if(document.search.category1.value == "제주도"){
          form.category2.length = 1;
          form.category2.options[1] = new Option("제주");
          form.category2.options[1].value = "제주";
          form.category2.options[2] = new Option("서귀포");
          form.category2.options[2].value = "서귀포";
       }
}