package hello0624.algorithm;

public class Node {
	private NodeData 	data;		// ��嵥����
	private Node 		prev;		// ������� ��ũ����
	private Node 		next;		// ������� ��ũ����.
	

	public Node()
	{
		data = null;
		next = null;
		prev = null;
		
	}

	public Node(NodeData _data)
	{
		data = _data;
		next = null;
		prev = null;
	}
	
	public Node(int _value1, String _value2)
	{
		data = new NodeData(_value1, _value2);
		next = null;
		prev = null;
	}
	
	public NodeData getData()
	{
		return data;
	} 
	
	public void setData(NodeData _data)
	{
		data = _data;
	} 
	
	public void setData(int _value1, String _value2)
	{
		if (data == null)
		{
			data = new NodeData(_value1, _value2);
		}
		else
		{
			data.setvalue1(_value1);
			data.setvalue2(_value2);			
			
		}
		
	}	
	
	public Node getNext()
	{
		return next;
	}
	
	
	public void setNext(Node _next)
	{
		next = _next;
	}
	
	public Node getPrev()
	{
		return prev;
	}
	
	
	public void setPrev(Node _prev)
	{
		prev = _prev;
	}
	
}
