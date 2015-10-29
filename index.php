<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tree</title>
	<link rel="stylesheet" href="nested.css">
</head>
<body>
<h1>Nested Set Model (Binary Search Tree View)</h1>
<div class="tree">
<?php
$servername = "localhost";
$username = "root";
$password = "C1s9g6b8";
$dbname = "nested";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT node.name,
							 node.category_id,
							 (COUNT(parent.name) - 1) AS depth
    			FROM nested_category AS node,
            	 nested_category AS parent
    		 WHERE node.lft
			 BETWEEN parent.lft
				 	 AND parent.rgt
    	GROUP BY node.name
    	ORDER BY node.lft;";
$result = $conn->query($sql);

//if ($result->num_rows > 0)
//{
//    while($row = $result->fetch_assoc())
//		{
//        for ($i = 0; $i < $row['depth']; $i++)
//				{
//        		echo '==>';
//    		}
//				echo $row['name'];
//				echo '<br />';
//				echo '<br />';
//    }
//}

$tree = array();

while ($row = $result->fetch_assoc())
{
    $tree[] = $row;
}

$conn->close();

function render_tree($tree = array(array('name'=>'','depth'=>'')))
{
		$current_depth = 0;
		$counter = 0;
		$result = '<ul>';

		foreach($tree as $node)
		{
				$node_depth = $node['depth'];
				$node_name = $node['name'];
				$node_id = $node['category_id'];

				if($node_depth == $current_depth)
				{
						if($counter > 0)
						{
								$result .= '</li>';
						}
				}
				elseif($node_depth > $current_depth)
				{
						$result .= '<ul>';
						$current_depth = $current_depth + ($node_depth - $current_depth);
				}
				elseif($node_depth < $current_depth)
				{
						$result .= str_repeat('</li></ul>', $current_depth - $node_depth).'</li>';
						$current_depth = $current_depth - ($current_depth - $node_depth);
				}
				$result .= '<li id="node'.$node_id.'"';
				$result .= $node_depth < 1 ?' class=""':'';
				$result .= '><a href="#">'.$node_name.'</a>';
				++$counter;
		}
		$result .= str_repeat('</li></ul>', $node_depth).'</li>';
		$result .= '</ul>';
	
		return $result;
}

print_r(render_tree($tree));
?>
</div>
</body>
</html>
