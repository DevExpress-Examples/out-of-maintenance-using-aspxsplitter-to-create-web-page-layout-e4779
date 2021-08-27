<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565825/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4779)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default1.aspx](./CS/Default1.aspx) (VB: [Default1.aspx](./VB/Default1.aspx))
* [Default1.aspx.cs](./CS/Default1.aspx.cs) (VB: [Default1.aspx.vb](./VB/Default1.aspx.vb))
* [Default2.aspx](./CS/Default2.aspx) (VB: [Default2.aspx](./VB/Default2.aspx))
* [Default2.aspx.cs](./CS/Default2.aspx.cs) (VB: [Default2.aspx.vb](./VB/Default2.aspx.vb))
* [Default3.aspx](./CS/Default3.aspx) (VB: [Default3.aspx](./VB/Default3.aspx))
* [Default3.aspx.cs](./CS/Default3.aspx.cs) (VB: [Default3.aspx.vb](./VB/Default3.aspx.vb))
* [MasterPage.master.cs](./CS/MasterPage.master.cs) (VB: [MasterPage.master.vb](./VB/MasterPage.master.vb))
<!-- default file list end -->
# Using ASPxSplitter to create web page layout
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4779/)**
<!-- run online end -->


<p>First, create a master page with ASPxSplitter. To achieve the needed layout, create some panes. You will also need to create nested panes in the following manner:</p>

```aspx
<Panes>
	<dx:SplitterPane>
		<Panes>
			<dx:SplitterPane>
			...
			</dx:SplitterPane>
			<dx:SplitterPane>
				<Panes>
				...
				</Panes>
			</dx:SplitterPane>
		</panes>
	</dx:SplitterPane>
</Panes>
```

<p> </p><p>To make some of the panels unresizable, specify properties for each pane. Or, if you wish to have a fixed layout, switch off resizing for the whole splitter. To resize panes' content (as we resize ASPxGridView in this example), handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSplitterScriptsASPxClientSplitter_PaneResizedtopic"><u>PaneResized</u></a> event. In its handler, get the required pane dimensions and resize the control using the client-side SetWidth and SetHeight methods.</p><p>ASPxSplitter should be a root control (reside in form tags) to work correctly in full screen mode. If you want to create a header or footer on your page, make them separate panels of the splitter.</p>

<br/>


