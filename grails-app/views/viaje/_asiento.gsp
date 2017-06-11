<div class="col-md-2">
    <h2>Asiento:</h2>
</div>
<div class="col-md-2">
    <g:select id="asiento" name="asiento"
              class="form-control"
              noSelection="['': 'Seleccionar']"
              from="${asientos}"
              optionKey="id"
              optionValue="numero" required="required"/>
</div>