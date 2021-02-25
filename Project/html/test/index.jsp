<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<!--페이지 이름-->
	<title>Test Template</title>
</head>

<!--문자 인코딩-->
<meta charset="utf-8" />

<!--사용 할 css 레퍼런스-->
<link rel="stylesheet" href="styles/kendo.default-v2.min.css" />
<link rel="stylesheet" href="styles/kendo.common.min.css" />
<link rel="stylesheet" href="styles/kendo.default.min.css" />
<link rel="stylesheet" href="styles/kendo.default.mobile.min.css" />
<link rel="stylesheet" href="styles/MyStyle.css" />

<!--사용할 javascript 레퍼런스-->
<script src="js/jquery.min.js"></script>
<script src="js/kendo.all.min.js"></script>

<body>
	<script src="js/customers.js"></script>
	<header>
		<!--로고-->
		<img src="images/logo.png">
	</header>

	<section>
		<!--메뉴 탭-->
		<div id="drawer">
			<div id="drawer-content">
				<!--menu1상태-->
				<div id="Menu1">
					<!--메뉴 확장 탭 부분-->
					<div style="float: left; width: 1%; padding-top: 15%;">
						<button id="MenuButton" , style="height: 100px; width: 5px"></button>
					</div>
					<!--내용 부분-->
					<div style="float: left; width: 99%">
						<div id="tilelayout"></div>
					</div>
				</div>
			</div>
		</div>

		<!--검색란 탬플릿-->
		<script id="search-form-template" type="text/x-kendo-template">
			<div class='Split-Search-Pane'>
				<div>
					<span>
						<label for="group" class="k-form-label">그룹:&nbsp;</label>
						<input id="group" size: 50 />
					</span>
	
					<span style="margin-left: 30px">
						<label for="nametextbox" class="k-form-label">이름:&nbsp;</label>
						<input id="nametextbox" />
					</span>
	
					<span style="margin-left: 30px">
						<label for="PhoneMtextbox" class="k-form-label">전화번호:&nbsp;</label>
						<input id="PhoneMtextbox" />
					</span>
				</div>
				<div>
					<span>
						<button id="ClearButton">Clear</button>
						<button id="SubmitButton", class="k-button k-primary" type="submit">Save</button>
					</span>
				</div>
			</div>
		</script>

		<!--검색결과란 탬플릿-->
		<script id="search-grid-template" type="text/x-kendo-template">
			<div id="SrcGrid" style="height:100%;"></div>
		</script>

		<!--고객정보란 탬플릿-->
		<script id="customer-table-template" type="text/x-kendo-template">
			<div id="Custform" style="height:100%;"></div>
		</script>

		<!--상담내역 탬플릿-->
		<script id="consult-grid-template" type="text/x-kendo-template">
			<div id="CslGrid" style="height:100%;"></div>
		</script>

		<!--메모란 탬플릿-->
		<script id="memo-form-template" type="text/x-kendo-template">
			<div id="MemoForm" style="height:100%;">
				<input id="Question" placeholder="문의사항" style="width: 50%;" />
				<button id="SaveButton">저장</button>
				<textarea id="Memo" style="width: 100%;"></textarea>
			</div>
		</script>

		<!--kendo 스크립트 부분-->
		<script>
			/*전체 타일*/
			$("#tilelayout").kendoTileLayout({
				containers: [{
					colSpan: 5,
					rowSpan: 1,
					header: {
					},
					bodyTemplate: kendo.template($("#search-form-template").html())
				}, {
					colSpan: 5,
					rowSpan: 3,
					header: {
					},
					bodyTemplate: kendo.template($("#search-grid-template").html())
				},
				{
					colSpan: 5,
					rowSpan: 3,
					header: {
					},
					bodyTemplate: kendo.template($("#customer-table-template").html())
				},
				{
					colSpan: 4,
					rowSpan: 3,
					header: {
					},
					bodyTemplate: kendo.template($("#consult-grid-template").html())
				}, {
					colSpan: 1,
					rowSpan: 3,
					header: {
					},
					bodyTemplate: kendo.template($("#memo-form-template").html())
				}],
				columns: 5,
				rowsHeight: 66,
				reorderable: false,
				resizable: false
			});

			$(document).ready(function () {
				/*-----textbox-----*/
				/*검색란 이름 텍스트박스*/
				$("#nametextbox").kendoTextBox();

				/*-----masked textbox-----*/
				/*검색란 그룹 마스크텍스트박스*/
				$("#PhoneMtextbox").kendoMaskedTextBox({
					mask: "000-0000-0000"
				});

				/*-----textarea-----*/
				/*메모란 텍스트에리어*/
				$("#Memo").kendoTextArea({
					rows: 8,
					maxLength: 200,
					placeholder: "Enter your text here."
				});

				/*-----button-----*/
				/*메뉴확장 버튼*/
				$("#MenuButton").kendoButton({
					icon: "arrow-60-right",
					click: toggleDrawer
				});

				/*검색 초기화 버튼*/
				$("#ClearButton").kendoButton({
					click: onClick
				});

				/*검색 버튼*/
				$("#SubmitButton").kendoButton({
					click: onClick
				});

				/*메모란 저장 버튼*/
				$("#SaveButton").kendoButton({
					click: onClick
				});

				/*-----combobox-----*/
				/*검색란 그룹 콤보박스*/
				$("#group").kendoComboBox({
					dataTextField: "text",
					dataValueField: "value",
					dataSource: [
						{ text: "VVIP", value: "1" },
						{ text: "VIP", value: "2" },
						{ text: "Gold", value: "3" },
						{ text: "Silver", value: "4" }
					],
					placeholder: "Select group",
					filter: "contains"
				});

				/*메모란 문의사항 콤보박스*/
				$("#Question").kendoComboBox({
					dataTextField: "text",
					dataValueField: "value",
					dataSource: [
						{ text: "환불/교환", value: "1" },
						{ text: "제품문의", value: "2" },
						{ text: "서비스문의", value: "3" },
						{ text: "기타", value: "4" }
					],
					filter: "contains"
				});

				/*-----grid-----*/
				/*검색결과란 테이블*/
				$("#SrcGrid").kendoGrid({
					dataSource: {
                    	data: customers,
                    	schema: {
                        	model: {
                        		fields: {
                                	Name: { type: "string" },
									Group: { type: "string" },
									Phone: { type: "string" },
									Email: { type: "string" },
									Address: { type: "string" },
                            	}
                        	}
                    	}
                	},
					height: 195,
					selectable: "multiple",
					change: onChange,
					columns: [
						{ field: "Name", width: "10%" },
						{ field: "Group", width: "10%" },
						{ field: "Phone", width: "15%" },
						{ field: "Email", width: "25%" },
						{ field: "Address", width: "40%" }
					]
				});

				/*상담내역 테이블*/
				$("#CslGrid").kendoGrid({
					columns: [
						{ field: "Date", width: "10%" },
						{ field: "Time", width: "10%" },
						{ field: "Question", width: "10%" },
						{ field: "SenRec", width: "10%" },
						{ field: "Content", width: "60%" },
					],
					dataSource: [
						{ Date: "20/10/26", Time: "17:23", Question: "교환/환불", SenRec: "수신", Content: "제품 환불 요청" },
						{ Date: "20/10/27", Time: "15:34", Question: "교환/환불", SenRec: "발신", Content: "환불 관련 안내" },
						{ Date: "20/11/13", Time: "10:11", Question: "교환/환불", SenRec: "수신", Content: "제품 교환 요청" },
					],
					selectable: "multiple",
					
				});

				/*-----form-----*/
				/*고객정보란 폼*/
				$("#Custform").kendoForm({
					orientation: "horizontal",
					layout: "grid",
					grid: {
						cols: 4,
						gutter: 27
					},
					items: [
						{
							field: "NameTextBox",
							label: "이름:"
						},
						{
							field: "GroupTextBox",
							label: "그룹:"
						},
						{
							field: "EmailTextBox",
							label: "이메일:",
							colSpan: 2
						},
						{
							field: "PhoneTextBox",
							label: "휴대전화:"
						},
						{
							field: "HomeTextBox",
							label: "집전화:"
						},
						{
							field: "HaddrTextBox",
							label: "집주소:",
							colSpan: 2
						},
						{
							field: "CompanyTextBox",
							label: "회사전화:"
						},
						{
							field: "FaxTextBox",
							label: "팩스:"
						},
						{
							field: "CaddrTextBox",
							label: "회사주소:",
							colSpan: 2
						}
					],
					buttonsTemplate: ""
				});

				/*메모란 폼*/
				$("#MemoForm").kendoValidator();

				/*-----drawer-----*/
				/*메뉴 확장 탭*/
				$("#drawer").kendoDrawer({
					template: "<ul> \
                            <li data-role='drawer-item' class='k-state-selected'><span>Menu1</span></li> \
                            <li data-role='drawer-item'><span>Menu2</span></li> \
                            <li data-role='drawer-item'><span>Menu3</span></li> \
                            <li data-role='drawer-item'><span>Menu4</span></li> \
							<li data-role='drawer-item'><span>Menu5</span></li> \
                          </ul>",
					mode: "push",
					itemClick: function (e) {
						if (!e.item.hasClass("k-drawer-separator")) {
							e.sender.drawerContainer.find("#drawer-content > div").addClass("hidden");
							e.sender.drawerContainer.find("#drawer-content").find("#" + e.item.find(".k-item-text").attr("data-id")).removeClass("hidden");
						}
					},
					position: 'left',
					minHeight: 850
				});

				/*fuctions*/
				/*메뉴확장 버튼 토글기능*/
				function toggleDrawer() {
					var drawerInstance = $("#drawer").data().kendoDrawer;
					var drawerContainer = drawerInstance.drawerContainer;

					if (drawerContainer.hasClass("k-drawer-expanded")) {
						drawerInstance.hide();
					} else {
						drawerInstance.show();
					}
				}
				/*버튼 클릭 기능*/
				function onClick(e) {
					kendoConsole.log("event :: click (" + $(e.event.target).closest(".k-button").attr("id") + ")");
				}

				/*테이블 클릭 기능*/
				function onChange(arg) {
					var selected = $.map(this.select(), function (item) {
						return $(item).text();
					});

					kendoConsole.log("Selected: " + selected.length + " item(s), [" + selected.join(", ") + "]");
				}
			});
		</script>
	</section>
</body>

</html>