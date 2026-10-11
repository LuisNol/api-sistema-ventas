<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Comprobante</title>
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        @page {
            margin: 0;
        }

        body {
            margin: 0;
            font-family: DejaVu Sans, Arial, sans-serif;
            font-size: 9px;
            color: #101010;
            background: #fff;
            page-break-inside: avoid;
        }

        .sheet {
            width: 74mm;
            margin: 0 auto;
            padding: 3mm 0 5mm;
            page-break-inside: avoid;
        }

        .company {
            text-align: center;
            line-height: 1.3;
            margin-bottom: 2mm;
            color: #000;
        }

        .company p,
        .document p,
        .section p,
        .note {
            margin: 0 0 1.5mm;
        }

        .company-name,
        .company-trade,
        .document-number,
        .section-title,
        .total-line {
            font-weight: 700;
        }

        .company-name {
            font-size: 12px;
            text-transform: uppercase;
        }

        .company-ruc {
            font-weight: 700;
            color: #000;
        }

        .company-trade {
            font-size: 10px;
            text-transform: uppercase;
        }

        .document {
            text-align: center;
            padding: 2mm 0;
            margin-bottom: 1mm;
            border-top: 0.25mm dashed #4a4a4a;
            border-bottom: 0.25mm dashed #4a4a4a;
        }

        .document-ruc {
            display: none;
        }

        .document-type {
            text-transform: uppercase;
            font-weight: 700;
        }

        .document-number {
            font-size: 10px;
        }

        .section {
            padding: 1mm 0;
            margin-top: 1mm;
        }

        .section-title {
            display: none;
        }

        .field-label {
            font-weight: 700;
        }

        .detail {
            border-top: 0.25mm dashed #4a4a4a;
            border-bottom: 0.25mm dashed #4a4a4a;
            padding: 1.5mm 0;
            margin-top: 1mm;
        }

        .detail-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
            font-size: 8px;
        }

        .detail-table th {
            border-bottom: 0.25mm dashed #4a4a4a;
            padding: 0 0 1.5mm;
            text-align: left;
            font-weight: 400;
        }

        .detail-table td {
            padding: 1.5mm 0 0;
            vertical-align: top;
            page-break-inside: avoid;
        }

        .detail-table .quantity {
            width: 9%;
            text-align: center;
        }

        .detail-table .unit {
            width: 12%;
            text-align: center;
        }

        .detail-table .description {
            width: 49%;
            padding-right: 1mm;
            word-wrap: break-word;
        }

        .detail-table .unit-price,
        .detail-table .amount {
            width: 15%;
            text-align: right;
        }

        .item-code {
            display: none;
        }

        .discount {
            color: #ef4444;
        }

        .totals {
            margin-top: 2mm;
            text-align: right;
        }

        .totals p {
            margin: 0 0 0.8mm;
        }

        .total-line {
            font-size: 10px;
            font-weight: 700;
        }

        .qr-wrap {
            text-align: center;
            margin: 4mm 0;
        }

        .qr-img,
        .qr-fallback {
            display: block;
            width: 35mm;
            height: 35mm;
            margin: 0 auto 2mm;
            border: 0.25mm solid #444;
        }

        .qr-fallback {
            padding-top: 15mm;
            color: #555;
        }

        .qr-code-text {
            font-size: 7px;
            line-height: 1.2;
            word-break: break-all;
        }

        .footer {
            border-top: 0.25mm dashed #4a4a4a;
            padding-top: 2mm;
            margin-top: 2mm;
            font-size: 8px;
            text-align: center;
        }

        .footer-note {
            border-top: 0.25mm dashed #4a4a4a;
            padding-top: 2mm;
            margin-top: 2mm;
            font-size: 8px;
            text-align: center;
        }

        .muted {
            color: #4b5563;
        }
    </style>
</head>
<body>
@php
    $company = $company ?? null;
    $currency = $sale->currency ?: 'S/';

    $defaultCompanyName = 'LARAVEST';
    $defaultCompanyTrade = 'SAC. TEC. LARAVEST';
    $defaultCompanyAddress = 'Av. Primavera 2711, Santiago de Surco';
    $defaultCompanyLocation = '25884 - Lima - Lima';
    $defaultCompanyRuc = '20161515648';
    $defaultCompanyPhone = '958962565';
    $defaultCompanyEmail = 'echodeveloper960@gmail.com';

    $documentType = 'COMPROBANTE ELECTRONICO';
    if (str_starts_with((string) $sale->serie, 'F')) {
        $documentType = 'FACTURA DE VENTA ELECTRONICA';
    } elseif (str_starts_with((string) $sale->serie, 'B')) {
        $documentType = 'BOLETA DE VENTA ELECTRONICA';
    }

    $documentNumber = $sale->n_operacion ?: ($sale->serie ? $sale->serie . '-' . str_pad((string) $sale->id, 8, '0', STR_PAD_LEFT) : (string) $sale->id);
    $companyName = trim((string) data_get($company, 'razon_social', '')) ?: $defaultCompanyName;
    $companyTradeName = trim((string) data_get($company, 'razon_social_comercial', '')) ?: $defaultCompanyTrade;
    $companyRuc = data_get($company, 'n_document', $defaultCompanyRuc);
    $companyPhone = data_get($company, 'phone', $defaultCompanyPhone);
    $companyEmail = data_get($company, 'email', $defaultCompanyEmail);

    $companyAddressParts = array_filter([
        data_get($company, 'region'),
        data_get($company, 'provincia'),
        data_get($company, 'distrito') ?: 'Rupa Rupa',
    ]);
    $companyAddress = data_get($company, 'address') ?: $defaultCompanyAddress;
    if (stripos($companyAddress, 'tingo maria') === false && stripos($companyAddress, 'tingo maría') === false) {
        $companyAddress .= ' - Tingo María';
    }
    $companyLocation = $companyAddressParts ? implode(' - ', $companyAddressParts) : $defaultCompanyLocation;

    $client = $sale->client;
    $clientName = data_get($client, 'full_name', 'N/D');
    $clientNumber = data_get($client, 'n_document', 'N/D');
    $clientPhone = data_get($client, 'phone', 'N/D');

    $clientAddressParts = array_filter([
        data_get($client, 'region'),
        data_get($client, 'provincia'),
        data_get($client, 'distrito'),
    ]);
    $clientAddress = $clientAddressParts ? implode('/', $clientAddressParts) : 'N/D';

    $userName = trim(data_get($sale, 'user.name', '') . ' ' . data_get($sale, 'user.surname', ''));
    $userName = $userName ?: 'Administrador';

    $paymentCondition = (int) $sale->state_payment === 3 ? 'Contado' : 'Crédito';
    $paymentMethod = data_get($sale, 'first_payment.method_payment', 'N/D');
    $paymentAmount = data_get($sale, 'first_payment.amount');
    $issueDate = $sale->created_at ? $sale->created_at->format('d/m/Y H:i:s') : 'N/D';
    $dueDate = $sale->date_validation ? \Carbon\Carbon::parse($sale->date_validation)->format('d/m/Y') : ($sale->created_at ? $sale->created_at->format('d/m/Y') : 'N/D');

    $discountGlobalGeneral = (float) ($sale->discount_global ?? 0);
    if ($sale->amount_anticipo) {
        $discountGlobalGeneral += (float) $sale->amount_anticipo;
    }

    $retencionTotal = 0;
    $percepcionTotal = 0;
    if ((int) $sale->retencion_igv === 3) {
        $percepcionTotal = round(((float) $sale->total * 0.04), 2);
    }
    if ((int) $sale->retencion_igv === 1) {
        $retencionTotal = round(((float) $sale->total * 0.03), 2);
    }
    if ((int) $sale->retencion_igv === 2) {
        $retencionTotal = round(((float) $sale->total * 0.04), 2);
    }

    $saleDetails = $sale->sale_details ?? collect();
    $icbperTotal = round((float) $saleDetails->sum('icbper'), 2);
    $iscTotal = round((float) $saleDetails->sum('isc'), 2);

    $totalSales = round(((float) $sale->total + $icbperTotal + $iscTotal + $percepcionTotal) - ($discountGlobalGeneral + (float) $sale->igv_discount_general + $retencionTotal), 2);
    $subTotalSale = round(((float) $sale->subtotal - $discountGlobalGeneral), 2);
    $igvTotal = round(((float) $sale->igv - (float) $sale->igv_discount_general), 2);

    try {
        $converter = new \Luecano\NumeroALetras\NumeroALetras();
        $whole = (int) floor($totalSales);
        $decimals = str_pad((string) round(($totalSales - $whole) * 100), 2, '0', STR_PAD_LEFT);
        $totalInLetters = strtoupper($converter->toWords($whole)) . ' (' . $decimals . '/100) SOLES';
    } catch (\Throwable $th) {
        $whole = (int) floor($totalSales);
        $decimals = str_pad((string) round(($totalSales - $whole) * 100), 2, '0', STR_PAD_LEFT);
        $totalInLetters = number_format($whole, 0) . ' (' . $decimals . '/100) SOLES';
    }

    $salesAnticipos = $sale->sales_anticipos ? json_decode($sale->sales_anticipos, true) : [];
    $logoPath = public_path('laravest.png');

    $qrPayload = implode('|', [
        $companyRuc,
        str_starts_with((string) $sale->serie, 'F') ? '01' : '03',
        (string) ($sale->serie ?? ''),
        (string) ($sale->correlativo ?? $sale->id),
        number_format($igvTotal, 2, '.', ''),
        number_format($totalSales, 2, '.', ''),
        $sale->created_at ? $sale->created_at->format('Y-m-d') : date('Y-m-d'),
        data_get($sale, 'client.type_document', '0'),
        $clientNumber,
    ]);

    $qrImageBase64 = null;
    $qrPreviewText = base64_encode(sha1($qrPayload, true));
    try {
        $qrUrl = 'https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=' . rawurlencode($qrPayload);
        $qrContent = @file_get_contents($qrUrl);
        if ($qrContent !== false) {
            $qrImageBase64 = 'data:image/png;base64,' . base64_encode($qrContent);
        }
    } catch (\Throwable $th) {
        $qrImageBase64 = null;
    }
@endphp

<div class="sheet">
    <div class="company">
        <p class="company-trade">{{ $companyTradeName }}</p>
        <p class="company-name">{{ $companyName }}</p>
        <p class="company-ruc">{{ $companyRuc }}</p>
        <p>{{ $companyLocation }}</p>
        <p>{{ $companyAddress }}</p>
        <p>Contactos al: {{ $companyPhone }} / {{ $companyEmail }}</p>
    </div>

    <div class="document">
        <p class="document-ruc">{{ $companyRuc }}</p>
        <p class="document-type">{{ $documentType }}: {{ $documentNumber }}</p>
    </div>

    <div class="section">
        <p>Cliente: {{ $clientName }}</p>
        <p>Número Doc: {{ $clientNumber }}</p>
        <p>Fecha Em.: {{ $issueDate }} &nbsp; Condición: {{ $paymentCondition }}</p>
        <p>Vendedor: {{ $userName }}</p>
        <p>Medio de Pago: {{ $paymentMethod }}{{ $paymentAmount ? ' ' . $currency . ': ' . number_format((float) $paymentAmount, 2) : '' }}</p>
    </div>

    <div class="section">
        <div class="detail">
            <table class="detail-table">
                <thead>
                    <tr>
                        <th class="quantity">Cant</th>
                        <th class="unit">U.M</th>
                        <th class="description">Descripción</th>
                        <th class="unit-price">P.U</th>
                        <th class="amount">Importe</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($saleDetails as $saleDetail)
                        <tr>
                            <td class="quantity">{{ number_format((float) $saleDetail->quantity, 0, '.', '') }}</td>
                            <td class="unit">{{ strtoupper($saleDetail->unidad_medida ?: 'UND') }}</td>
                            <td class="description">
                                <span class="item-code">{{ data_get($saleDetail, 'product.sku', str_pad((string) $saleDetail->product_id, 8, '0', STR_PAD_LEFT)) }}</span>
                                {{ data_get($saleDetail, 'product.title', $saleDetail->description) }}
                            </td>
                            <td class="unit-price">{{ number_format((float) ($saleDetail->price_final ?? 0), 2) }}</td>
                            <td class="amount">{{ number_format((float) ($saleDetail->subtotal ?? 0), 2) }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="muted">No se encontraron detalles.</td>
                        </tr>
                    @endforelse

                    @foreach ($salesAnticipos as $salesAnticipo)
                        <tr>
                            <td class="quantity">1</td>
                            <td class="unit">UND</td>
                            <td class="description">Anticipo de la factura {{ data_get($salesAnticipo, 'n_operacion') }}</td>
                            <td class="unit-price">0.00</td>
                            <td class="amount">-{{ number_format((float) data_get($salesAnticipo, 'total', 0), 2) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <div class="totals">
        <p>Total Items: {{ $saleDetails->count() + count($salesAnticipos) }} <span style="margin-left: 18mm;">Subtotal {{ $currency }} &nbsp; {{ number_format($subTotalSale, 2) }}</span></p>
        <p>Op. Exonerada {{ $currency }} &nbsp; {{ number_format($subTotalSale, 2) }}</p>
        <p>IGV {{ $currency }} &nbsp; {{ number_format($igvTotal, 2) }}</p>
        <p class="total-line">Total a Pagar {{ $currency }} &nbsp; {{ number_format($totalSales, 2) }}</p>
    </div>

    <p class="note">Son: {{ $totalInLetters }}</p>
    <p class="note">Representación impresa de la {{ $documentType }}.</p>
    <p class="note">Descargue XML y PDF desde: https://xml.virtualfactperu.com</p>

    <div class="qr-wrap">
        @if ($qrImageBase64)
            <img class="qr-img" src="{{ $qrImageBase64 }}" alt="QR Comprobante">
        @else
            <div class="qr-fallback">QR</div>
        @endif
        <div class="qr-code-text">{{ $qrPreviewText }}</div>
    </div>

    <div class="footer">BIENES TRANSFERIDOS EN LA AMAZONIA PARA SER CONSUMIDO EN LA MISMA.</div>
    <div class="footer-note">No se aceptan devoluciones. Cambio de mercadería max 24 hrs.</div>
</div>
</body>
</html>
