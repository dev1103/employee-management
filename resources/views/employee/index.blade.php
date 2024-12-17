@extends('layouts.app')

@section('content')
    @if(session()->has('success'))
        <div class="alert alert-success mt-2">
            {{ session()->get('success') }}
        </div>
    @endif
    @if(session()->has('error'))
        <div class="alert alert-error mt-2">
            {{ session()->get('error') }}
        </div>
    @endif

    <div class="d-flex justify-content-between mb-2 mt-2">
      <div>
        <h1>Employee List</h1>
      </div>
      <div>
        <a class="btn btn-primary" href="{{ route('employee.create') }}" >Create</a>
      </div>
    </div>
   
    <table class="table table-bordered" id="employeeData">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Gender</th>
                <th>Action</th>
            </tr>
        </thead>
    </table>
@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function () {
       const table = $('#employeeData').DataTable({
           processing: true,
           serverSide: true,
           order: [0, 'desc'],
           ajax: "{{ route('employee.index') }}",
           columns: [
               {data: 'id', name: 'id', visible: false, searchable: false},
               {data: 'name', name: 'name'},
               {data: 'email', name: 'email'},
               {data: 'mobile', name: 'mobile'},
               {data: 'gender', name: 'gender'},
               {data: 'action', name: 'action', orderable: false, searchable: false},
           ]
       });
       $('body').on('click', '.deleteEmployee', function () {
            var employee_id = $(this).data("id");
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        type: "DELETE",
                        // url: "{{ route('employee.destroy', "+ employee_id + ") }}",
                        url: '/employee/'+employee_id,
                        data:{
                            'id': employee_id,
                            '_token': '{{ csrf_token() }}',
                        },
                        success: function (data) {
                            Swal.fire(
                            'Deleted!',
                            'Your file has been deleted.',
                            'success'
                            );
                            table.draw();
                        },
                        error: function (data) {
                            console.log('Error:', data);
                        }
                    });

                }
            });
        });

        setTimeout(function() { $(".alert").hide(); }, 5000);
    });
</script>
@endsection