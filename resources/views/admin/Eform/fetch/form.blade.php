@foreach ($forms as $form)
    <option value="{{ $form->id }}"
        {{ old('form_id') == $form->id ? 'selected' : '' }}>{{ $form->name }}
    </option>
@endforeach
