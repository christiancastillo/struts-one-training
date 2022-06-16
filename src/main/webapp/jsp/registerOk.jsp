	<td class="borde">
				<%-- Nota: Los operandos deben ser números positivos. (Validación usando un ActionForm => Método validate del formulario asociado a la acción sumar) --%>
				<p class="nota">
					Validación usando un ActionForm.
					<br/>Nota: Los operandos deben ser números positivos.
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
				
				<%-- Validación usando un DynaValidatorForm con validación tanto en el servidor como en el cliente (javascript) --%>			
				<p class="nota">Validación usando un DynaValidatorForm.
					<br/>Validación en servidor y cliente (javascript).
					<br/>Todos los campos son requeridos.
					<br/>El campo email debe tener un formáto válido.
					<br/>El campo edad debe ser un número entre 18 y 40
				</p>
				
				<%-- Indicamos que genere el código JavaScript necesario para validar el formulario registroForm.
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