<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>specificlist</title>
</head>
<body>
<br><br><br>
<center>

<h1>상세분류를 선택하세요.</h1>

<table border="1">
<tr>
<c:forEach items="${sessionScope.specifics}" var="data">
	<c:choose>
		<c:when test="${data.cid.cid eq 'c_1'}">
			<td>
				<h3>${data.sname}</h3>
				<c:choose>
					<c:when test="${data.sname eq '국물류'}">
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://www.pigpeople.net/data/photos/20170416/art_14927036061773_f148b7.png" width="300" height="200"></a>
					</c:when>
					<c:otherwise>
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8wTeXRxO3hFUROvbf8N-XATBhGsY2QRXRpQ&usqp=CAU" width="300" height="200"></a>
					</c:otherwise>
				</c:choose>
			</td>
		</c:when>
		
		<c:when test="${data.cid.cid eq 'c_2'}">
			<td>
				<h3>${data.sname}</h3>
				<c:choose>
					<c:when test="${data.sname eq '패스트푸드'}">
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxASEhUSEhMVFRUVFxcaFxUYFxYYGhYZGhcXGhoaFx4YHiggGBslHRcYITEhJSktLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGzImICYtLS0tLy0uLS8tLS0tLS0tLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgEDBAUHAgj/xABHEAABAwIEAwUEBwcCAgsBAAABAAIRAyEEEjFBBVFhBhMicYEHMpGhI0JSscHR8BQVF1SS4fFi0lOCJDRjcpOisrPC0+IW/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAEFBv/EACsRAAICAQQCAgECBwEAAAAAAAABAhEDBBIhMRNRFEFhQpEiMlJxgaHhBf/aAAwDAQACEQMRAD8A7iiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAoqoiAIiICiIiAqiIgCIiAIiIAiIgCIrVfEMZ7xj8TyXG0uxRdVJWjxfGXkubTZYWzExBWopY/EOGXvS6+th6SNvNZ5amCdF8dPJomL6gGpAWK7ilGHEOBDdYvCh4x85w14MS0uAzQ60kE68rWVivQa2jmc5uXMBlJuTtbc3VD1rf8qLlpfbJY/tFQ8OXM8uiABGvOYhWMX2kYzM6BlaQDLmgzygm6iZerdR1KlSc9xhxJyU2iXPNrx57qqWtk+mW/EiuyaYntDSFmuaXRMSYP8AzaBYlXtfTEZWZ9MxDm+HnvdQw1Xn12Vk1wOdlH50r7JfDidJb2gw5cGAukxHhI16rxU7R0GlwJjKJMmNxNzawM6rnOM4o6q/O5xmIgBoHnpqrQxTRuL9NfNW/Nb6IfDR1nh/EqNcE0nteBF2mRefyPwWUuTYfijMM0Oa9maqIDAchbcxcfq6z8B2txTXZXZCHZRc+4dCZ5eivhqk1yUS0z+jpaoo/wAO7U06mYECWRmhwIgicw6LfUqgcAQZBWiOSMumZ5Rcez2iIpkQiIgCIiAoqoiAoiIgKoqKqAIiIAiIgCt16zWAucYAXjFYptMZnLS43EOqESIHKZnp5Tf4KnLmUF+S3Hjc3+CuOxz6rfBmptmJJgkzoI9FrKtUkmXFxaSCZJgjVZr2iwA8XPmeQ8lSjhs1tvh5rzcmWU3SNkFGBhUwT4QTeBM2F/ksJmID6tVlGXNpkNNTUOcWy4A7wVKW4Bm3xXqnQpsEAAAcrXK54G+2d86XSIycC+JiByiFZdh3TBBUuL2aQLLVVqrQ61xPyVWTBGPNk4Z5P6NFUpAFUrNgXWyrsmdv8ysPGNGXT9SszVFymYNSgsN9AXW7xpblB5gGI5xb5rWUHseCQdCQQbEHkRsVFpXQWVXRr6uGVmtwhxpmqC3K2ZBdBtuAtni2w1arFcJqYlgaAY1sYsNZ2jzU4dnXPg09eibb8rbdFb/anNsSVl0cE8QwAuLcw6iJMfJYOKomQfir4si5JnsYrNOn5SpNwHjWIwVSmahPdVGgwTmGU7iDqPPnZQhrS0nUK+/iFTuu7mQNAbxebct1ojJp2iqaUlTO98I7QYfEPqUqbw59L3gNI5jmNltl8zYDidWhVFei806jTtvzDhuOi7h2G7Wtx7HSA2ozLmaDa4OnTwkr0MWXdw+zBkxbeV0SlERXlIREQBERAUREQFUVFVAEREAQorWJqZWk77LjdKzqVke4lixTqQ7MaZccpsYcdQek6HzVt1dsy0En0H9/krvFMPnoubEkDN67KN4bGd41oBILj4ukGC34rwNRmalRqUnHhEmdU0tf9aLEw2MqPqODQBSbYuIu524HS4v0V4O06LzSxsPZSgeOb8o/sq9zu7IXzyZZqu2lY2IxRkNB8RWGzjxkteRTgkEQSbGD5LX4nGPM1qc/RvIho+ps4jrJ+ChPPfCZY5/RtuI1DSaSZBNhPONf10WFwN7XtLXPAdMjMdQY0XniVRzwC+5DQD0JEu9bgLAwFAZgTy06WA/BQlkqdfQ3u7JQ/APiJb81YbwZ7jfKB6lK/FxSaJFjaeXVZ3CuIB7BJuN+fUFaUscnQ8sjRdpKDKdMNzOzCOlhe0dYUUq962p31MZswAeHQyY3udY/FdG4tRDhmtIBAnr+K5jxvDGm4mXdDMrJmjsy2Vtu7Jpw3E4SrTLjQdmEBweYA6ybEeSt1OJUyRSoNDaYIEDeXR62nVc+w2MLTDiSD1IHqtkMe5gDmEC4PpoIUnmfRHe39kwqCnQJeHNJMSAIdbnGvqtPX41SqeDuQ4E3Dmtt5Qr/AAbEMkEtDiINz06rD4rhcLndWANIC7mWLHHp9meS658Wjl/ZqcRwZ1UnuabiBfLF/QG5C0HEMK6nIe1zDceJpH3qccDaDFVuKFPMfC0MlwP+q4A/EKXHFukUquV7y2QQPC8cwDodJHULThm2uS6OV1TOFVsMYa4/XAI8uavcIqV6VTvKJeDTu5zBOVs3JH4brpnHMDg6jgX0RI0LTl0nXLYhe6VOm+i+mzLTYdWtYGkciY18+qteocVwdcnXJ0Sg8Oa1wIIIBBGhkahXFzPBcSxFNgph9WaQyMaLWFhOzrBb7sz2oqPd3OJbFSQGuaJDujgND5WW3Fr8c5bejK4kuREW4iEREBRERAVREQBERAUWs4rxGk0ZS686C6t9qGu7kvbILDNiZjQi2uvyXOuJYh7HeO5Nw2wgcjyK8rX6yeJ7Irv7JwX2dCwGKFSmXDw3OsSIG/zUHovbSxVWg4g5yH03DQ/bA+R9CrGF7Svax7AwMaWumMxkZSBOcnc7KOV6jiGOB3ljhrTeNjzmx/RXlyyKdX/knuOh1+INa8UwbkC+wPXlKVQe8a/7MjykfcoizimaoO9yh0NzRoTA+CzG8WyuMaAafgVHccSbJEO6701nNkkAEbSPrRzIhXuJ4zBYU08Q8DvHubTptEy977ANAt1mNAo9W4ywtzWGpkXg9Y/JWqfFKdUAd4zM33XA6f7fPZIzUXdWSaM7i/FAS5trZvUysjhD81xYlogdLEH4XUT4ph3AhzngH7IvbWbaevJXuH9o6lIBpc2wgZgJjlMTHRUxTu5HVZMOKUJC0+Axbqbiwm33HmFif/17HAh4APObR5K5wvFUnuFRrmukWggj9bKzluyTi0arjHa2s3FDUMomO7uMwOrnDmQRfoFqsb2o7+q7MA1oFhOqmnabAivSaaFKl38wS7OAW2kEsuDYETyPNc2qYB5LqeIpspvzR4XSIFy45iY33C1eOElb/wC/sVNMsYzi7SYBVvD8UqOdDGl07BXqfDsI03rADmGPLfjlU77J4GlTqBpAvGm8721Ck/HGlX7kGmR4mvh6QxGJBa2Q1lIEy9xkw4/UaACeZiFYb2mNfwd0eeUEeVhF179pPFO8r/s7ajS2kZdlMg1bzJ5tBiNpPpqeBYGs1za+QPYwy5oMkt0Mdb6J4YbLkuf2JbWbTD45tOowyRDpDXCJ8tipY3tPiMrIe1obeWAEmNjmm3ktN2s4YyrRcyiHEhrXtJAGZuuZsai8Xvqobw3HVGCDNjF/xUIQuO6L5+xtJ9ieIPjODmEgHMTad43Nlv8AC8fZTZloiXG5cfIfDTRRThb21KL7QfeA10B05nUK9S4fjngGlQqVGOEh7W+E+ptK5GM/0kl0Z2P45Xg+Im9r2A/uVIOx3G8MHDOwNe+weTIH+0TaeqgVaq4HLUa5pGrXAtd6giVLuwnA6eKzVXn6NhDcg+sdYPJunmrtMp+VUufyJLg6ex4OhB8l6VrD4dlMZWNDRyAgK6veX5KQiIugIqIgKoqKqAIiICG+012LNCnSwo8T3y4zlhrROpItMfBQE0nA5XmXizj1306rttWmHAhwkHZQ7GdmMlGvUIb3t3ZpJlrWaXFtF5Wv0k8sk4lmNq6Zzg8RoltRtyBGg1I5fFXeHEVG5AMgJBtt687rVUQBKz+FOhy87wRhKj6LDoMe22rJM/s5Tecz3VLm8Bg8osT8YXh/ZSgHBs1XZifrQGwOok7/ACWywtZr2ta67Tr4jygQR1O55rzUwbC3xNczwXyvdlLWzAc4HXeY3W1YoVwjO8UYuqNNS7OUqL+9aHZwDEvJABB94GxNz0sCtRxsPqUwxzy1rfdaJaXZiAC7Kbxd0aC6kfFsYC0ESQ6MrmkgwbTcWMEqNYtwpjLcFpAy8pvM7QYt16KEklKzVjwRfLRoKnD4bALgDzm14keLcC8Hda2rQcBBJjXKZj4FSFzml3hv1Is63K/6+CwsRTm/5J5Ga4Yo+jVVGmJAA9ArVEOD80gEAmTbbS15Wc4WWDVar8bsuWGHozqPHcWwENxNVvKHuj77f3WrxGIfUcXVHlxO7iXSrgrEQdcukgEfA7XXhzpsBE2tN77qxKK+iEsMV9FkDn9wUmpdo3Mw9OnSBFRjMpqHY5j7oG7QRBJ9NFH2iTpr8ldmLA7+nmoyipdmXLp4Sq0e8NhJIlgN5vqb3Fr/AOVv8BQNFpfPdSIJzOA6AyY1WBwaj3uYEkQAbc5/spNiMBSq0gxz3CHaxeWyNCL6kKzba5MmWEU6o0tfimMa4NhrzTnJUgggOF2mLObvHne6ycNg6WKc3wljiRnDZvJExt5Sq8QwIbWc+TAaGAEcmj3TOnprK17HkOlri3X3TE+apngi+uGVPTwmuCQY7iVPCRRwmV5bOao4SZBMgGL666Lz2R7V124hhqVn5Q4B8lxGQGS3KNrm3VRtod9afeJFhAAmIjaANd1YwD/GfMqePGovg49LBRo+lsM/DYtjarQyq2fC5zJgi1swkFe6HCqDKjqzGZXv94tLgHebQcpPWFG/ZbUJwZnaq6P6WH8VMV6CSfJ401tk0ERFIiEREBRERAFVEQBERAF4qsDmlp0IIPqvawKp8Rk/qFGctqOxVnJ8X2QxVM3YYzEAgF86xZgPJZGD7K4km1Mjq4AD/wAxB+S6hnCt96F50sGNu7PXj/6OZRqkQqn2ZxPhJyeEz77hMEGDAM6D4K27gOJblLcgDSSWh7yHam8iwufNTY1wrAfmJgErvjgumQ+blfZzvHYLF6OyET1FtgLbKOY+nUY6SwEzJlxIPwAXXsZhZ3aPMqP8T7NuqTlcz1J/JUTSs1Y9Y/s5bWx9cBxyN8Rl13CbzoLbrXV+NVRP0dP4OP4rqWC7ENeT3ji4DZoyj47rFr9g6NR5YKYawD3wXSDyvquRlDui9auPs5W/jdT7FP8ApH4qz+8qzrNpNPkyfwXR8L2IwtOqWPe4k+7Bg+q2WL7MsYDJDWdLKzzQXSIyzt9SOUsrVzANOmOpYB8YCz6eEcbirQ8sl/8A0qUY3G4YQwtBItMrcYDs3hqjA51OCd4IR5/wQeZ/1MhGH4LUdqaemzQrp4C+Yt6KU4zstkM0qhHQlYVTC4qntnHMIs0WVvJk+maajwmuz3Dl1vAP5LKY7HtBJqCOrAtvh31XQMsc1k1KdQatJ8hZSWVeyqWSb7I1SwOLqRdjiJguD5vrvdU/cGPgwxhGtpG8+gUvwGKjVpHotvRxjYiYM84KmppkHqJo5nV4TxATNCbaB3lzVvhnCcR3ga+k5kk+J5AaLE3K68KgK85G9FYiD1k6qjc+z3CClhsmem5xeXHI8PgENAmPJSlQns1S/wCktI2a77lNlqg7R58+XYREUyIREQFEVUQFFVEQBERAFF+0fF20DneYGYA+XP8AFShcw7a16eKqvpm3dOyWMZzac08r36rLq03CkzRpkt/JK34sCJ3XqpjWxYCfJaXsvxEOYKT/AH2CATfM0aeZAF1vcRQpxLoaOei8pymm1ZqajfKLbeKUwJMSOQC0vG+1Ja2GjKPtFaPtP23wmGltECpV6QYPXYfeodiuH4vGfTYqoGMIDu5BIc5uZovzsZUorJkXdImowjy0bel2nxFd57k/Rgw6qZInSG3GYk2AB+V1vuzWJruHe4lwFN4s0amwdvabadFqMP2eYxjR7rCO8cADMQDAGxJhuv1hdbihRblBcO7DWuDQQAQ07mNjexjU2VqwQXCRx5GyS0+0FCg0+PMDLi6DDRE+L7JibG9itBxPtHWqMLqDCWfa0B2tOt7LW4/HM7tjCRUOsTkmbTe4EwQ2NNzdU4hx0NH7O17S4nKTa2oLyBuXEkAct5Cm8fCX0QXDs1OBweLfVNWqLCwvJznSAOQBPkFn9s8Tlpg1apyjLLGkN2uBaZ3utnR4Y2nTzS4ZaRc8umGzYhg+0dOcAKGV8RRqOawAurVHk6S4lzRExPhGvO5hccETUvstYPsjUqRihVNMWc1guWgDedCt5SxeMDZZiTUBb7jg3RsSCA3qBqvdTEY5rclR9NrgA57gfCJJAbzJO1ptC0n71zVe6l7gWPiW5S8keEN1JJMGOl0bk3R1V2zcs7eBju7xNAxAipTGYOETOV3iAjkSt5w3imAxUd1UYXH6vuu/pdBUBaR3LnuY7NTjK4ixnYkdNrEWVus2jXpl7aeapAOYatImYtHJV5MEZ/g4pNHUHYFo2BXhkttqFz3hPajEYQhlVxr0rTu9g2hx97yPLZT3hnEqOJZnpODhoY2PIjUHosGXHlwu+0WRkmKjWHULDxlGWkM1jXcLZ1aAKxKtLKCc0AXJMW9VLHls60jVcOx9UOFOqDMWcNLc+S2zMQ+ctpGv9lEqnbVud7G03PYJ8dhmGhIBWXwTtAK5eQwty2gmSRzW65xVsp2xkTjsnxKi2qTUdlc6Wt5TIkE89Pip2vnWtxV9Oo1rxZrnZ+Ya8Ni2xBE+S7b2PxlSpQy1QQ+k7I6QQTABBM9CFu0+RvhmTNjS5RvURFrM4REQFEREAVURAEREAXEO3GLZh8biG+I5qk5uRexriOnvW8l29c69qPZAV2nFUgO8bHeAuABaBAcJ+sLDW4VOeLceC/BJRlyRPheLpsYagd9LLS0OcQC0AwJEauJnyWo7Tccx2JBmWMA91r5kzzbryjqsXDUX5nUxmhjZAFyXC5DSLAibDU7Kzwd4fVOHqPOYz7xPvAy4W+0BuvOcE3uas3ljhPAM7Q5zsoJvaIFtzA3Urq45jbVAGl3iuJLmC8XvBJMg9EocPw7n02ML48LqjWiWnLo07ASBvzVzjXDq9Q1Khw1QuL2NBIEiQ4QATYXBMjYXUt98kaLdbjjphvgcWwfo5IHvWBttrrdWqXEHua+nnbnJkvfPhYAScguXSZvG613F+HOwxourZ2udUEscQJbN5ieo19Fd4S95LqgpOcQSPCNBAsD1E/Io5DaeCWGv9M7M90ta0VGBp92c8+6LQBZY9HiZZiGuFEFzCGNgkND5HiJaBFpE63cvb8LhyRWbh3DJBHiqkNdNm3MT0PNZOE4XUw+atUpOptiYfSzOc+5uSBHoOS6ppnHEs8X4xUdnc+q4OJgsDZaNYGacu0781gN7Rd00sw9MUy4y57jndffMR4bDQLObiWYoiiS98nMXNM2kFzADZtyb9N1g4xrC5waxgDIYBHiEGJ5k3uTyRSS7O0zU0MU99ZjqhzNm5dOUn6odzHos9jg13euDc18oaLC5kCREEWsreO4cG0gM2aDmcIgxEWnRWnMayizwkvMkuzjSQWgRpHVTUotcHKf2K2OcWuY3wsNzcmJtpMbSrGCrO1Jc1psSBIn+8KwcaIAIcYHTnv8ANZ1PPUYHMjQeGBAOYEkxtA84U+lyQXLPdCo10sJ1mBGm3O2gVOBYqvhq803Bp0IPuvGwMfftKtUwC6CJgyYBcLTN1iVOK5XOqAAeIANDbD1P3qG3dwSckjsvBONUsSwkHK5o8bHWLevUdVDe2vGjX+hpEikD4nCfpDt/y/eoZ+8czXOJvGg5SbddvgvLMa6o05Q4hoGbKCfjHndUYtHHHLcHNvgz6DW5pbFwIjrrPyVKdd1K+YtOxbIkXH66qyysMnukGdRaDqB0/wAKz3wc8vMkXhouBsfLUrX32Q6MqoAHOIMyBM33kyvp/gfefs1DvINTuqecjd2QZvnK+YcBhnVSKTBnq1CGME7us35xryX1Jw7D93Sp0/sMa23+loFvgr8RnzfRkIiK4oCIiAoiIgKoqKqAIiICjio/j6jKgIf4mu+qdI5eS31U+E+RUYcGTJAKwa6UkkomnTRTbbMRnBsOXGW02t+q1rWg2O5An/Gt1psT7OsA+oKrM7KmcPLu8eZgzBk2HlCkf0cjwjdesQGuAI8JbMEW18tdN1gjOSXZraIzX4ezAD6ICo97sz6haJnYCPdAvbqVtuy3Eqj2P7xsHNrzWuqcPrOqZqlWWA2aBE+a3n7UIiG+Q1tZUOUt13RY4rbVWZ9Wk13vNDiNJAMeUqu0LxhKwe0O9D58/VZFVkKaTauyjrgsFg5LGxWFa+zgCOolU4hxihRBL3C3UAKG8T9oNIEtpyeoH4lUyfNR5/sWwhJm7wvZLBUnOcymGlwvc/K9vReqHDcBhy5zWNzHUmXH56KBYrtfWqWZMnc3hYYqVqlqlRxG9yBryXNuZ9uv9lqxr7ZMuLcX4a8ltRtJxAiCWyBytcLC4dwbh2LJZTpNA+0x7rfOFpsHhqMkw0BrTcgXP6C3v7fRpt7unIkS4ixAty32U4wcf1M60qpF6r2F4UyzmlxbYnMfzWThOG8OwwIpU2gHYkmT6kqL8UxlSQKVQjQQ6DdaupjcTb6Qcvdb1k6aLQnKX2Q2JEkrcDwdSqXN8DXAhzWQAZ6bK5V9nuBLbOeByzAqLU8VVJM1PKzfyWWONV2izw65s4RpbZSuS6ZzabNnYrBUgbOqDkTa3lqruF4VhGtMNDXXgNt5aarQ1u0NUmAGi3W9/PoVj1uLVyTleAB/pGt7Lu2bXLOUkZuK4VTL3Nc3XR7dHgXEjomH7LtILQRlOoFp8wsLDcSxJdJLTNrtb66QthhMe9pBJGhsPON1XKOWP8rJUjadkeDYfBYuniKgaYdALtGF1s4B0I2Pmu1tIIkXC4FxPiQqQLwB8/8AH4rtnZullwlBuYuilTudT4QV6ejnJxqRg1MUmmbJERbDKEREBRERAVRUVUAREQHl4sfJQ0vspoue8axfcOex1iDbqDofgvP16/hTNek7aMxtQL09x2vbVRD9/gGxVw9oBHvBeTyehsJNUqW6bczzWsqYvrrpa/8Ahal3H2HobwsSpxkTeLyJtPpyUXFslFUSnAcRNNx1LXACNZInQaytD2o7XYgEtaMsWk7egWD++mZs5gxGVpFm9fO/yC1/Ecc2rf58h/ldWK3zdevoVG7oj+NxdWoZqOLj1/AKtDDTYr0WjNN94KyaVQD/AAOn5LXVLgOVmTh8MAYBEjbfQlZD2xy2A3m2wHn+oWH+8LECB97o0J3Pqsetjuvl1v5qG1s5aM574tM+XSPkrBrXJJneI21ix6rXftB/M7nT+ysGoT+vW6msZzcbM4ogyDBj4fO1ljVq4OrgRe0fDdYZaTv8YVe6N+imoHNxefiNVZFbTXXSeZ3+5U/Z/wBfrZUOH/sppJEbLlOoNzpp5LJZVHn0WGKHVVDCu2cNmyoNRy56z0HkvTqv4ffotY0uGkr1L9NkFmT3p08l9D9lHTgsKf8AsKX/ALbV898I4bVxNVtGkMz3G3QfaPIDmvpLAYYUqVOmNGMa0eTQB+C16ddsxamS4RfREWoyhERAEVFVAUVURAEREAWo7QdncPjG5aoII917TDm+WxHQghbdFxxTVM6m07RzDE+yVxdLMaQOTqOY+pFQfcrP8JKv863/AMA//auqoqvBj9FvnyezkZ9kuJn/AK3TjnkdPwn8VZq+yXGj3cTRPmHj7gV2JE+Pj9D5GT2cZpeyfHb1sOPWof8A4q/T9kuK+tiKMdA8/kuvonx4eh8jJ7OSfwmxH8xTPo9ev4T1/wCYp/0vXWUT4+P0PPP2cn/hJV/maf8AQ7814HsjrfzFP+ly62ifHx+h55+zkZ9klfavS+Dh+CoPZNiP+PR+D/yXXUT48PQ88/ZyL+E2J/49L4P/ACXv+Etb/j0v6XLrSJ8eHoeefs5bS9kjvrYpo8qRP3vCvs9krBriief0X/7XS0TwQ9HPPP2c5/hRR/mX+jG/mrrPZVht69U+jPyXQUXfDD0c80/Zz+p7KsMdMRXHl3X+xVp+yfA/Wq4l/m6mPuYp+i74oejnkn7NVwHs7hcG3Lh6YbPvOMuc7/vONz5aLaoisSohdhERAEREBRERAVVERAEREAREQBERAEREAREQBERAEREAVURAEREBQIiIAhVUQFAqoiAIiICiIiAIiICiIiA//9k=" width="300" height="200"></a>
					</c:when>
					<c:otherwise>
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://t1.daumcdn.net/liveboard/dailylife/bc64322b30a641779da332fe3ad46d70.jpg" width="300" height="200"></a>
					</c:otherwise>
				</c:choose>
			</td>
		</c:when>
		
		<c:when test="${data.cid.cid eq 'c_4'}">
			<td>
				<h3>${data.sname}</h3>
				<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F9928F7345DD5007724" width="300" height="200"></a>
			</td>
		</c:when>
		
		<c:otherwise>
			<td>
				<h3>${data.sname}</h3>
				<c:choose>
					<c:when test="${data.sname eq '초밥'}">
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/00/a0000370/img/basic/a0000370_main.jpg?20201002142956&q=80&rw=750&rh=536" width="300" height="200"></a>
					</c:when>
					<c:otherwise>
						<a href="total?command=getRestaurants&sname=${data.sname}"><img src="https://th2.tmon.kr/thumbs/image/423/336/e17/1b1492318_700x700_95_FIT.jpg" width="300" height="200"></a>
					</c:otherwise>
				</c:choose>
			</td>
		</c:otherwise>
	</c:choose>
	</c:forEach>
</tr>
</table>

<br><br><br>

</center>
</body>
</html>
