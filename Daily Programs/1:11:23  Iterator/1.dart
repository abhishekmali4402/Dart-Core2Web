class programLang implements Iterator {
    int index = -1;
    var progLang = [];
    programLang(String lang){
		this.progLang = lang.split(",");
		}
	
	bool moveNext(){
		if(index<progLang.length-1){
			index = index+1;
			return true;
		}
	return false;
	}
	get current{
		if(index>=0 && index <=progLang.length-1)
		return progLang[index];
	}
}

void main(){
	
	programLang obj = new programLang("CPP,JAVA,PYTHON,DART");
	while(obj.moveNext()){
		print(obj.current);
		}		
	
}
