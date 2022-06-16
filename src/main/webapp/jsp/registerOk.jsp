	<td class="borde">
				<%-- Nota: Los operandos deben ser n�meros positivos. (Validaci�n usando un ActionForm => M�todo validate del formulario asociado a la acci�n sumar) --%>
				<p class="nota">
					Validaci�n usando un ActionForm.
					<br/>Nota: Los operandos deben ser n�meros positivos.
				</p>
				<html:form action="sumar"  method="post" focus="operando1" >
					<br/>Operando 1:<html:text property="operando1"/> <html:errors property="operando1"/>
					<br/>Operando 2:<html:text property="operando2"/> <html:errors property="operando2"/>
					<table>
						<tr>
							<td><html:submit value="Sumar"/></td>
							<td><html:cancel value="Cancelar"/></td>
						</tr>
					</table>
						
					<logic:notEmpty name="operandosForm" property="resultado">
						<p> <strong>El resultado es</strong>: 
							<bean:write name="operandosForm" property="resultado"/>
						</p>			
					</logic:notEmpty>
				</html:form>
				
				<%-- Validaci�n usando un DynaValidatorForm con validaci�n tanto en el servidor como en el cliente (javascript) --%>			
				<p class="nota">Validaci�n usando un DynaValidatorForm.
					<br/>Validaci�n en servidor y cliente (javascript).
					<br/>Todos los campos son requeridos.
					<br/>El campo email debe tener un form�to v�lido.
					<br/>El campo edad debe ser un n�mero entre 18 y 40
				</p>
				
				<%-- Indicamos que genere el c�digo JavaScript necesario para validar el formulario registroForm.
             (Las validaciones las optione del archivo validation.xml) --%>
				<html:javascript formName="registroForm" />
				<html:form action="registro"  method="post" focus="login" onsubmit="return validateRegistroForm(this);">
					<br/>Login: <html:text property="login"/> <html:errors property="login"/>			
					<br/>Email: <html:text property="email"/> <html:errors property="email"/>
					<br/>Edad:  <html:text property="age"/>   <html:errors property="age"  />
					<p><html:submit value="Enviar"/></p>
				</html:form>	
			</td>	
		</tr>
	</table>
	
	<%-- En caso de que existan errores, los mostramos --%>
    <logic:messagesPresent>
    	<div class="errores">
			<html:errors/>
		</div>	        
    </logic:messagesPresent>
</body>
</html:html>   