@extends('layouts.app')

@section('content')
<div class="row mt-2">
    <h4>Edit Employee</h4>
    @if($errors->any())

    {!! implode('', $errors->all('<div style="color:red">:message</div>')) !!}

    @endif

    <form method="post" action="{{ route('employee.update',$employee->id) }}" id="regForm" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="_method" value="PUT">
        <div class="row mb-1">
            <div class="form-group col">
                <label for="first_name">First name</label>
                <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $employee->first_name }}" placeholder="First name">
            </div>
            <div class="form-group col">
                <label for="last_name">Last Name</label>
                <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $employee->last_name }}" placeholder="Last Name">
            </div>
        </div>
        <div class="row mb-1">
            <div class="form-group col-md-6">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ $employee->email }}" placeholder="Email">
            </div>
        </div>
        <div class="row mb-1">
            <div class="form-group col-md-6">
                <label for="country_code">Country code</label>
                <select id="country_code" class="form-control" name="country_code">
                @foreach ($countries as $country)
                    <option value="{{ $country->phonecode }}" {{ $country->phonecode == $employee->country_code ? 'selected' : '' }}>{{ $country->phonecode }} ( {{ $country->name }} )
                </option>
                @endforeach
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="mobile">Mobile</label>
                <input type="text" class="form-control" id="mobile" name="mobile" value="{{ $employee->mobile }}" placeholder="Mobile">
            </div>
        </div>
        <div class="form-group mb-2">
            <label for="address">Address</label>
            <textarea class="form-control" id="address" name="address" rows="3">{{ $employee->address }}</textarea>
        </div>
        <div class="row mb-2">
            <div class="form-group col-md-4">
                <label for="address">Gender :</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="male" value="Male" {{ $employee->gender == 'Male' ? 'checked' : '' }}>
                    <label class="form-check-label" for="male">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="female" value="Female" {{ $employee->gender == 'Female' ? 'checked' : '' }}>
                    <label class="form-check-label" for="female">Female</label>
                </div>
            </div>
            <div class="form-group col-md-8">
                <label for="hobby">Hobby :</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="cricket" value="Cricket" {{ in_array('Cricket',  $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="cricket">Cricket</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="dance" value="Dance" {{ in_array('Dance', $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="dance">Dance</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="music" value="Music" {{ in_array('Music', $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="music">Music</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="swimming" value="Swimming" {{ in_array('Swimming', $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="swimming">Swimming</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="reading" value="Reading" {{ in_array('Reading', $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="reading">Reading</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobby[]" id="writing" value="Writing" {{ in_array('Writing', $employee->hobby) ? 'checked' : '' }}>
                    <label class="form-check-label" for="writing">Writing</label>
                </div>
            </div>
        </div>
        <div class="form-group mb-1">
            <label for="file">Photo</label>
            <input class="form-control mb-1" type="file" name="file" id="file">
            @if ($employee->photo != null)
                <img src="{{ asset('images/'.$employee->photo) }}" height="100px" width="100px">
            @endif
        </div>
        <div class="form-group mb-1">
            <a href="{{ route('employee.index') }}" class="btn btn-secondary" role="button">Cancel</a>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>
@stop

@section('script')
<script type="text/javascript">
    $(document).ready(function(){
        $("#country_code").select2();
        $("#regForm").validate({
            rules: {
                first_name: {
                    required: true,
                    maxlength: 60,
                },
                last_name: {
                    required: true,
                    maxlength: 60,
                },
                email: {
                    required: true,
                    email: true,
                    maxlength: 50
                },
                country_code: {
                    required: true,
                },
                mobile: {
                    required: true,
                    number: true,
                    minlength: 10,
                    maxlength: 10,
                },
                address: {
                    required: true,
                },
                gender : {
                    required: true,
                },
                'hobby[]' : {
                    required: true,
                },
                file : {
                    required: true,
                    extension: "jpg|jpeg|png"
                },
            },
            messages: {
                first_name: {
                    required: "First name field is required",
                    maxlength: "First name field cannot be more than 60 characters"
                },
                last_name: {
                    required: "Last name field is required",
                    maxlength: "Last name field cannot be more than 60 characters"
                },
                email: {
                    required: "Email field is required",
                    email: "Email field must be a valid email address",
                    maxlength: "Email field cannot be more than 50 characters",
                },
                country_code: {
                    required: "Select country code",
                },
                mobile: {
                    required: "Mobile field is required",
                    number: "Mobile field must be a valid number",
                    minlength: "Mobile field must be of 10 digits",
                    maxlength: "Mobile field must be of 10 digits",
                },  
                address: {  
                    required: "Address field is required",
                },
                gender: {
                    required: "Gender field is required",
                },
                'hobby[]': {
                    required: "Select hobby",
                },
                file: {
                    required: "Please upload file.",
                    extension: "Please upload file in these format only (jpg, jpeg, png).",
                },
            }
        });
    });
</script>
@endsection