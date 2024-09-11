<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>TUTO - Invoice HTML5 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <!-- External CSS libraries -->
    <link type="text/css" rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link type="text/css" rel="stylesheet" href="{{ asset('assets/fonts/font-awesome/css/font-awesome.min.css') }}">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="{{ asset('assets/img/favicon.ico') }}" type="image/x-icon">

    <!-- Google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Custom Stylesheet -->
    <link type="text/css" rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
</head>

<body>

    <!-- Invoice 4 start -->
    <div class="invoice-4 invoice-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="invoice-inner" id="invoice_wrapper">
                        <div class="invoice-top">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="invoice">
                                        <h1>TUTO LARAWIRE</h1>
                                    </div>
                                    {{-- <div class="logo">
                                        <img src="{{ asset('assets/img/logos/logo.png') }}" alt="logo">
                                    </div> --}}
                                </div>
                                <div class="col-sm-6">
                                    <div class="invoice text-end">
                                        <h1>Invoice</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="invoice-titel">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="invoice-number">
                                        <h3>Invoice Number: #45613</h3>
                                    </div>
                                </div>
                                <div class="col-sm-6 text-end">
                                    <div class="invoice-date">
                                        <h3>Invoice Date: 24 Jan 2022</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="invoice-info">
                            <div class="row">
                                <div class="col-sm-6 mb-30">
                                    <div class="invoice-number">
                                        <h4 class="inv-title-1">Client</h4>
                                        <p class="invo-addr-1">
                                            {{ $client_name }} <br />
                                            {{ $client_email }} <br />
                                            {{ $client_address }} <br />
                                        </p>
                                    </div>
                                </div>
                                <div class="col-sm-6 mb-30">
                                    <div class="invoice-number text-end">
                                        <h4 class="inv-title-1">Enterprise</h4>
                                        <p class="invo-addr-1">
                                            Apexo Inc <br />
                                            billing@apexo.com <br />
                                            169 Teroghoria, Bangladesh <br />
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 mb-30">
                                    <h4 class="inv-title-1">Date</h4>
                                    <p class="inv-from-1">Due Date : {{ date('d-m-Y') }}</p>
                                </div>
                                <div class="col-sm-6 text-end mb-30">
                                    <h4 class="inv-title-1">Payment Method</h4>
                                    <p class="inv-from-1">Credit Card</p>
                                </div>
                            </div>
                        </div>
                        <div class="order-summary">
                            <div class="table-responsive">
                                <table class="table invoice-table">
                                    <thead class="bg-active">
                                        <tr>
                                            <th>Product Name</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-center">Quantity</th>
                                            <th class="text-right">Totals</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ( $prodcommands as $pc)
                                        <tr>
                                            <td>
                                                <div class="item-desc-1">
                                                    <span>{{ $pc->product_name }}</span>
                                                </div>
                                            </td>
                                            <td class="text-center">{{ $pc->price }}</td>
                                            <td class="text-center">{{ $pc->quantity }}</td>
                                            <td class="text-right">{{ $pc->price }} XAF</td>
                                        </tr>
                                        @endforeach

                                        <tr>
                                            <td colspan="3" class="text-end">SubTotal</td>
                                            <td class="text-right">{{ $total }} XAF</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="text-end">Tax</td>
                                            <td class="text-right">0.00 %</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="text-end fw-bold">Grand Total</td>
                                            <td class="text-right fw-bold">{{ $total }} XAF</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="invoice-informeshon">
                            <div class="row">
                                <div class="col-md-4 col-sm-4">
                                    <div class="payment-info mb-30">
                                        <h3 class="inv-title-1">Payment Info</h3>
                                        <ul class="bank-transfer-list-1">
                                            <li><strong>Account Name:</strong> 00 123 647 840</li>
                                            <li><strong>Account Number:</strong> Jhon Doe</li>
                                            <li><strong>Branch Name:</strong> xyz</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <div class="terms-and-condistions mb-30">
                                        <h3 class="inv-title-1">Terms and Condistions</h3>
                                        <p class="mb-0">Once order done, money can't refund. Delivery might delay due to
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <div class="nates mb-30">
                                        <h4 class="inv-title-1">Notes</h4>
                                        <p class="text-muted">This is computer generated invoice and physical signature
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="invoice-contact clearfix">
                            <div class="row g-0">
                                <div class="col-lg-9 col-md-11 col-sm-12">
                                    <div class="contact-info">
                                        <a href="tel:+55-4XX-634-7071"><i class="fa fa-phone"></i> +00 123 647 840</a>
                                        <a href="tel:info@themevessel.com"><i class="fa fa-envelope"></i>
                                            info@themevessel.com</a>
                                        <a href="tel:info@themevessel.com" class="mr-0 d-none-580"><i
                                                class="fa fa-map-marker"></i> 169 Teroghoria, Bangladesh</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="invoice-btn-section clearfix d-print-none">
                        <a href="javascript:window.print()" class="btn btn-lg btn-print">
                            <i class="fa fa-print"></i> Print Invoice
                        </a>
                        <a id="invoice_download_btn" class="btn btn-lg btn-download btn-theme">
                            <i class="fa fa-download"></i> Download Invoice
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Invoice 4 end -->

    <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/js/jspdf.min.js') }}"></script>
    <script src="{{ asset('assets/js/html2canvas.js') }}"></script>
    <script src="{{ asset('assets/js/app.js') }}"></script>
</body>

</html>
