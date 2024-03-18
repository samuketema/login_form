mixin ValidationMixin{

  String? validateEmail (String? value) {
      if(value == null || !value.contains('@')){
        return 'Please enter correct email';
      }
      return null;
    }

    String? validatePassword (String? value){
      if (value == null || value.length < 4 ){
        return "Small characters";
      }
      return null;
    }
}