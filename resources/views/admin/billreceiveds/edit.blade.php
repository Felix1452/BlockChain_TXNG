@extends('admin.main')

@section('head')
@endsection
@include('admin.alert')

@section('content')

    <form action="" method="POST" enctype="multipart/form-data">
        <div class="card-body">

            <div class="form-group">
                <label for="">Chuỗi Siêu Thị</label>
                <?php
                    $i = 0;
                ?>

                @while($i < sizeof($arrs))
                    @foreach($salerooms as $saleroom)
                        @if($saleroom->id == (int)$arrs[$i])

                            <div class="form-check">
                                <input class="form-check-input" name="saleroom[]" checked type="checkbox" value="{{ $saleroom->id }}" id="{{ $saleroom->id }}">
                                <label class="form-check-label" for="flexCheckDefault">
                                    {{ $saleroom->tencoso }}
                                </label>
                            </div>
                        @endif
                    @endforeach
                        <?php $i = $i + 1;
                        ?>
                @endwhile


                @foreach($salerooms as $saleroom)
                    <?php $dem = 0;?>
                    @for($j = 0; $j < sizeof($arrs); $j++)
                        @if($saleroom->id == (int)$arrs[$j])
                            <?php $dem++ ?>
                        @endif
                    @endfor
                    @if($dem == 0)
                        <div class="form-check">
                            <input class="form-check-input" name="saleroom[]" type="checkbox" value="{{ $saleroom->id }}" id="{{ $saleroom->id }}">
                            <label class="form-check-label" for="flexCheckDefault">
                                {{ $saleroom->tencoso }}
                            </label>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Cập Nhật Hóa Đơn Nhập hàng</button>
        </div>
        @csrf
    </form>
@endsection

@section('footer')
@endsection
