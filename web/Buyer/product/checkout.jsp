<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, product.product, product.DBConnection" %>

<!DOCTYPE HTML>
<!--

	Free for personal and commercial use under the CCA 3.0 license 
-->
<html>
	<head>
		<title>Checkout</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<<<<<<< Updated upstream
		<link rel="stylesheet" href="./main.css" />
=======
		<link rel="stylesheet" href="main.css" />
>>>>>>> Stashed changes
		
	</head>
	<body class="no-sidebar is-preload">
            

    
    
		<div id="page-wrapper">

			
			<!-- Header -->
            <section id="header" class="wrapper">

                <!-- Logo -->
                    <div id="logo">
                        <h1><a href="">Checkout</a></h1>
                        <p>A free responsive site template by HTML UP</p>
                    </div>

                <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li><a href="Buyer/product/home.jsp">Home</a></li>
                                 
                            <li><a href="Buyer/product/productlist.jsp">Products</a></li>
                             
                            <li>
                                <a href="#">Category</a>
                                <ul>
                                    <li><a href="#">Category 1</a></li>
                                    <li><a href="#">Category 2</a></li>
                                    <li><a href="#">Category 3</a></li>
                                    <li>
                                        <a href="#">Sed consequat</a>
                                        <ul>
                                            <li><a href="#">Lorem dolor</a></li>
                                            <li><a href="#">Amet consequat</a></li>
                                            <li><a href="#">Magna phasellus</a></li>
                                            <li><a href="#">Etiam nisl</a></li>
                                            <li><a href="#">Sed feugiat</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Category 4</a></li>
                                </ul>
                            </li>
        <!-- 				<li><a href="left-sidebar.html">Left Sidebar</a></li>		-->
                        <li><a href="Buyer/product/contactus.jsp">Contact Us</a></li>		
                        <li><a href="Buyer/product/aboutus.jsp">About Us</a></li>	
                        <li><a href="Buyer/product/article.jsp">Article</a></li>				
                        <li><a href="" style="display: none;">Empty Space</a></li>			
                        <li><a class="current" href="../../CartServlet?action=view"><img src="images/cart2.png">Cart</a></li>
                        <li><a href="../../Admin/auth/login.jsp"><img src="images/user2.png">Login</a></li>
        <!-- 				<li><a href="no-sidebar.html">No Sidebar</a></li>			-->
                        </ul>
                    </nav>

            </section>

				

			

			<!-- Main -->
				<section id="main" class="wrapper style3">
					<div class="title">Checkout</div>
					

						<!-- Features -->
							<section id="features">
                                                           
                                                             
                                                            
                                                            <form action="checkout" method="post">
                                                                 <div class="feature-list">
                                                               <h1>Customer Details</h1>
                                                               <div class="row">
                                                                    
                                                                    
                                                                        <label for="name">Name:</label></td>
                                                                        <input type="text" id="name" name="name" required>
                                                                        <label for="address">Address:</label>
<<<<<<< Updated upstream
                                                                        <textarea id="address" name="address" required></textarea>
                                                                         <label for="Payment">Payment Method:</label>
                                                                             <div class="payment-options">
                                                                                          <select name="Payment" id="Payment">
=======
                                                                        <input type="text" id="address" name="address" required>
                                                                         <label for="phone">Phone:</label>
                                                                        <input type="text" id="phone" name="phone" required><br>
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        <label for="paymentMethod">Payment Method:</label>
                                                                             <div class="payment-options">
                                                                                         
                                                                                
                                                                                
                                                                        <select name="paymentMethod" id="paymentMethod">
>>>>>>> Stashed changes
                                                                          <option value="lod" >Select Payment Method </option>
                                                                          <option value="cod">Cash on Delivery</option>
                                                                          <option value="opel">Pay Online using a card</option>
                                                                          <option value="PayPal">PayPal</option>
                                                                        </select>   
<!--  <div id="payment" class="organic-store-checkout-payment">
			<ul class="wc_payment_methods payment_methods methods">
			<li class="wc_payment_method payment_method_payhere">
	<input id="payment_method_payhere" type="radio" class="input-radio" name="payment_method" value="payhere" checked="checked" data-order_button_text="">

	<label for="payment_method_payhere">
		Pay online <img src="https://payherestorage.blob.core.windows.net/payhere-resources/plugins/payhere_long_banner.png" alt="Pay online">	</label>
			<div class="payment_box payment_method_payhere">
			<p>Pay by Visa, MasterCard, eZcash, mCash or Internet Banking via PayHere.</p>
		</div>
	</li>
<li class="wc_payment_method payment_method_frimi">
	<input id="payment_method_frimi" type="radio" class="input-radio" name="payment_method" value="frimi" data-order_button_text="Proceed to FriMi">

	<label for="payment_method_frimi">
		FriMi Digital Wallet <img src="https://bearappeal.com/wp-content/plugins/woo-frimi/assets/logo.png" alt="FriMi Digital Wallet">	</label>
			<div class="payment_box payment_method_frimi" style="display:none;">
			<div id="woo-frimi-wrapper" class="form-row form-row-wide"><p>After the submission, you will receive a notification on FriMi app to complete the transaction.</p><label for="woo-frimi-form-frimi-id">FriMi ID or Mobile Number<abbr class="required" title="required">*</abbr></label><input pattern="\d{10}" required="" maxlength="10" inputmode="numeric" title="10 Digit FriMi ID or Mobile Number" placeholder="E.g: 07xxxxxxxx" name="frimi_id" id="woo-frimi-form-frimi-id" type="text"></div>		</div>
	</li>
<li class="wc_payment_method payment_method_cod">
	<input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="cod" data-order_button_text="">

	<label for="payment_method_cod">
		Cash on delivery (Available within Colombo and Suburbs) 	</label>
			<div class="payment_box payment_method_cod" style="display:none;">
			<p>Pay with cash upon delivery.</p>
		</div>
	</li>
<li class="wc_payment_method payment_method_bacs">
	<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="bacs" data-order_button_text="">

	<label for="payment_method_bacs">
		Direct bank transfer 	</label>
			<div class="payment_box payment_method_bacs" style="display:none;">
			<p>Make your payment directly into our Sampath Bank account.</p>
		</div>
	</li>
		</ul>
		<div class="form-row place-order">
		<noscript>
			Since your browser does not support JavaScript, or it is disabled, please ensure you click the <em>Update Totals</em> button before placing your order. You may be charged more than the amount stated above if you fail to do so.			<br/><button type="submit" class="button alt" name="organic-store_checkout_update_totals" value="Update totals">Update totals</button>
		</noscript>

			<div class="organic-store-terms-and-conditions-wrapper">
		<div class="organic-store-privacy-policy-text"><p>Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our <a href="https://bearappeal.com/privacy-policy/" class="organic-store-privacy-policy-link" target="_blank">privacy policy</a>.</p>
</div><div class="organic-store-terms-and-conditions" style="display: none; max-height: 200px; overflow: auto;"><p>[vc_row][vc_column][vc_column_text]These Terms were last updated on the 27th March, 2018.</p>
<h5><strong>OVERVIEW</strong></h5>
<p>This <a href="https://bearappeal.lk/">website</a> is operated by Bear Inc (Pvt) Ltd. Throughout the site, the terms “we”, “us” and “our” refer to Bear Inc (Pvt) Ltd. Bear Inc (Pvt) Ltd offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>
<p>By visiting our site and/or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/or contributors of content.</p>
<p>Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p>
<p>Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p>
<p>Our store is hosted on <a href="https://organic-store.com/">organic-store</a>. They provide us with the online e-commerce platform that allows us to sell our products and services to you.</p>
<h5><strong>SECTION 1 – ONLINE STORE TERMS</strong></h5>
<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>
<p>You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</p>
<p>You must not transmit any worms or viruses or any code of a destructive nature.</p>
<p>A breach or violation of any of the Terms will result in an immediate termination of your Services.</p>
<h5><strong>SECTION 2 – GENERAL CONDITIONS</strong></h5>
<p>We reserve the right to refuse service to anyone for any reason at any time.</p>
<p>You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>
<p>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.</p>
<p>The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>
<h5><strong>SECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</strong></h5>
<p>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</p>
<p>This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>
<h5><strong>SECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES</strong></h5>
<p>Prices for our products are subject to change without notice.</p>
<p>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</p>
<p>We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>
<h5><strong>SECTION 5 – PRODUCTS OR SERVICES</strong></h5>
<p>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>
<p>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.</p>
<p>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</p>
<p>We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>
<p><span style="text-decoration: underline">Delivery Terms and Guarantee</span></p>
<p>We deliver island-wide. Cash on delivery is available in Colombo and suburbs only. Delivery time depends on your location, and could take up to 7-10 business days (or more on rare occasions, such as prolonged adverse weather conditions or government-imposed travel restrictions.)</p>
<h5><strong>SECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION</strong></h5>
<p>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p>
<p>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</p>
<p>For more detail, please review our <a href="http://bearappeal.com/returns-policy/">Returns Policy</a>.</p>
<h5><strong>SECTION 7 – OPTIONAL TOOLS</strong></h5>
<p>We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.</p>
<p>You acknowledge and agree that we provide access to such tools “as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.</p>
<p>Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).</p>
<p>We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.</p>
<h5><strong>SECTION 8 – THIRD-PARTY LINKS</strong></h5>
<p>Certain content, products and services available via our Service may include materials from third-parties.</p>
<p>Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.</p>
<p>We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</p>
<h5><strong>SECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</strong></h5>
<p>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</p>
<p>We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.</p>
<p>You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</p>
<h5><strong>SECTION 10 – PERSONAL INFORMATION</strong></h5>
<p>Your submission of personal information through the store is governed by our <a href="http://bearappeal.com/privacy-policy/">Privacy Policy</a>.</p>
<h5><strong>SECTION 11 – ERRORS, INACCURACIES AND OMISSIONS</strong></h5>
<p>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).</p>
<p>We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.</p>
<h5><strong>SECTION 12 – PROHIBITED USES</strong></h5>
<p>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>
<h5><strong>SECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</strong></h5>
<p>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.</p>
<p>We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.</p>
<p>You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</p>
<p>You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</p>
<p>In no case shall Bear Inc (Private) Limited, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</p>
<h5><strong>SECTION 14 – INDEMNIFICATION</strong></h5>
<p>You agree to indemnify, defend and hold harmless Bear Inc (Private) Limited and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p>
<h5><strong>SECTION 15 – SEVERABILITY</strong></h5>
<p>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p>
<h5><strong>SECTION 16 – TERMINATION</strong></h5>
<p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</p>
<p>These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</p>
<p>If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>
<h5><strong>SECTION 17 – ENTIRE AGREEMENT</strong></h5>
<p>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</p>
<p>These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</p>
<p>Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>
<h5><strong>SECTION 18 – GOVERNING LAW</strong></h5>
<p>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of Sri Lanka.</p>
<h5><strong>SECTION 19 – CHANGES TO TERMS OF SERVICE</strong></h5>
<p>You can review the most current version of the Terms of Service at any time at this page.</p>
<p>We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>
<h5><strong>SECTION 20 – CONTACT INFORMATION</strong></h5>
<p>Questions about the Terms of Service should be sent to us at <a href="mailto:hello@bearappeal.lk">hello@bearappeal.lk</a> or 077 141 1919.</p>
<p>Bear Inc (Private) Limited<br>
9/3 Walawwatta Road<br>
Gangodawila<br>
Nugegoda 10250</p>
<p>Sri Lanka.[/vc_column_text][/vc_column][/vc_row]</p>
</div>
					<p class="form-row validate-required">
				<label class="organic-store-form__label organic-store-form__label-for-checkbox checkbox">
				<input type="checkbox" class="organic-store-form__input organic-store-form__input-checkbox input-checkbox" name="terms" id="terms">
					<span class="organic-store-terms-and-conditions-checkbox-text">I have read and agree to the website <a href="https://bearappeal.com/terms/" class="organic-store-terms-and-conditions-link" target="_blank">terms and conditions</a></span>&nbsp;<abbr class="required" title="required">*</abbr>
				</label>
				<input type="hidden" name="terms-field" value="1">
			</p>
			</div>
	
		
		<button type="submit" class="button alt" name="organic-store_checkout_place_order" id="place_order" value="Place order" data-value="Place order">Place order</button>
		
		<input type="hidden" id="organic-store-process-checkout-nonce" name="organic-store-process-checkout-nonce" value="a37e177f18"><input type="hidden" name="_wp_http_referer" value="/?wc-ajax=update_order_review">	</div>
</div>-->
                                                                                   <br> 
                                                                                   <label>We suppport, <img src="https://payherestorage.blob.core.windows.net/payhere-resources/plugins/payhere_long_banner.png" alt="Pay online">	
                                                                                </label>
                                                                                <br> <br>
                                                                    </div></div>


								<div class="feature-list">
									<div class="row">
                                        <label >Your order:</label>   
                                                        <table>
                                                                    <tr>
                                                                        <th><h2>Product ID<h2></th>
                                                                        <th><h2>Image<h2></th>
                                                                        <th><h2>Product Name<h2></th>
                                                                        <th><h2>Price<h2></th>
                                                                        <th><h2>Quantity<h2></th>
                                                                    </tr>
                                                              <div class="col-6 col-12-medium">
                                                                 
                                                                  <c:forEach items="${cartProducts}" var="product">
                                                                      
                                                                                   <tr>     
                                                                                                <td style="vertical-align: middle"><p> ${product.getId()} </p></td>
											                                                	<td style="vertical-align: middle"><p><img class="image" src=" ${product.getImage()}" style="width:20%"> </p></td>
                                                                                                <td style="vertical-align: middle"><p> ${product.getName()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>$. ${product.getPrice()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>$. ${product.getQty()}</p></td>
																							</tr>
                                                                                
                                                                        </c:forEach> 
                                                                                                                                                                                                                                                                                        <td style="vertical-align: middle"><p>$. ${product.getPrice()} </p></td>
                                                                                                <td style="vertical-align: middle"><p>Total</p></td>

                                                                                  
                                                              </div>             
                                                          </table>
                                                                                    
                                                      
                                       
									</div>
								</div>
                                                                
       

          
                                                                
								<ul class="actions special">
									<li><a href="Buyer/product/productlist.jsp" class="button style1 large">GO Back</a></li>
									<li><a href="#" class="button style2 large">Conform Order</a></li>
								</ul>
							</form>
                                                        </section>

					</div>
				</section>

		

			

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>



<!--footer section-->
<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="footer-column support">
                    
                    <div class="support-icon"></div>
                    <h3>For all of your Organic cosmetics needs</h3>
                </div>
                <div class="footer-column vacation">
                    <div class="vacation-icon"></div>
                    <h3>Ready to get start your journey with Organic!</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="footer-column company-info">
                    <h3>Organic Cosmetics</h3>
                    <p>Your trusted online store for all of your cosmetic needs. <br>Organic done differently!</p>
                    <!-- Social Icons -->
                    <div class="social-icons">
                        <!-- Icons here -->
                    </div>
                </div>
                <div class="footer-column links">
                    <h4>Pages</h4>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Community Blog</a></li>
                        <li><a href="#">Terms and Conditions</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Contact us</a></li>
                    </ul>
                </div>
                <div class="footer-column newsletter">
                    <h4>Newsletter</h4>
                    <form action="">
                        <input type="email" placeholder="Email address">
                        <input type="submit" value="Subscribe">
                        <div class="checkbox">
                            <input type="checkbox" id="agree">
                            <label for="agree">* I agree to all terms and policies</label>
                        </div>
                    </form>
                </div>
                <div class="footer-column contact">
                    <h4>Contact</h4>
                    <p>Drop a Line</p>
                    <p class="contact-detail">+94 (11) 456 889</p>
                    <p>Email Address</p>
                    <p class="contact-detail">contact@organiccosmetics.lk</p>
                    <p>Visit office</p>
                    <p class="contact-detail">583 Chapal Street, Pitipana North, Homagama, LK</p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p>&copy; 2024 Built with care by Team Organic Cosmetics. All Rights Reserved</p>
        </div>
    </div>
</footer>
		
        
            </footer>
	</body>
</html>