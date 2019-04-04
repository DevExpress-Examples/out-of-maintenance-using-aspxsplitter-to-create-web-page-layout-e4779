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


