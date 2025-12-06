typedef IntList = List<int>;
typedef ListMapper<T> = Map<T, List<T>>; 

void main(){
  IntList l1 = [1,2,3,4,5];
  print(l1);

  ListMapper<int> map1 = {};
  print(map1.isEmpty);

}