package aa.bb.cc;

abstract class B{
	public abstract void doPrint();
}

public class A extends B{

	public int a;
	
	@Override
	public void doPrint() {
		System.out.println("A 클래스 입니다.");
		System.out.println("a = "+a);
//		int b;
//		System.out.println("b =" + b);
	}
	public void doPrint(int a) {
		
	}
	
}
