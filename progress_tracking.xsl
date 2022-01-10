<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
			<h1 style="text-align:center;">Progress tracking</h1>
			<h3 style="text-align:center;">Teams table</h3>
			<table style="border-collapse:collapse; margin:0 auto;">
				<tr>
					<th style="border:1px solid #000; padding:10px;">Team Id</th>
					<th style="border:1px solid #000; padding:10px;">Manager Id</th>
					<th style="border:1px solid #000; padding:10px;">Member Count</th>
					<th style="border:1px solid #000; padding:10px;">Team Name</th>
				</tr>
				<xsl:for-each select="ProgressTracking/Teams/Team">
				<xsl:sort select="TeamId"/>
					<tr>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TeamId"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="ManagerId"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="MemberCount"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TeamName"></xsl:value-of>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			
			<h3 style="text-align:center;">Team members table</h3>
			<table style="border-collapse:collapse; margin:0 auto;">
				<tr>
					<th style="border:1px solid #000; padding:10px;">Member Id</th>
					<th style="border:1px solid #000; padding:10px;">Team Id</th>
					<th style="border:1px solid #000; padding:10px;">First Name</th>
					<th style="border:1px solid #000; padding:10px;">Last Name</th>
					<th style="border:1px solid #000; padding:10px;">Gender</th>
					<th style="border:1px solid #000; padding:10px;">Mobile Number</th>
					<th style="border:1px solid #000; padding:10px;">Email</th>
				</tr>
				<xsl:for-each select="ProgressTracking/TeamMembers/Member">
				<xsl:sort select="MemberId"/>
					<tr>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="MemberId"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TeamId"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="FirstName"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="LastName"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="Gender"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="MobileNumber"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="Email"></xsl:value-of>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			
			<h3 style="text-align:center;">Tasks table</h3>
			<table style="border-collapse:collapse; margin:0 auto;">
				<tr>
					<th style="border:1px solid #000; padding:10px;">Task Id</th>
					<th style="border:1px solid #000; padding:10px;">Task Name</th>
					<th style="border:1px solid #000; padding:10px;">Task Description</th>
				</tr>
				<xsl:for-each select="ProgressTracking/Tasks/Task">
					<tr>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TaskId"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TaskName"></xsl:value-of>
						</td>
						<td style="border:1px solid #000; text-align:center; padding:10px;">
							<xsl:value-of select="TaskDescription"></xsl:value-of>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			
			<h3 style="text-align:center;">Gantt chart table</h3>
			<table style="border-collapse:collapse; margin:0 auto;">
				<tr>
					<th style="border:1px solid #000; padding:10px;">Start Date Time</th>
					<th style="border:1px solid #000; padding:10px;">End Date Time</th>
					<th style="border:1px solid #000; padding:10px;">Task Id</th>
					<th style="border:1px solid #000; padding:10px;">Task Name</th>
					<th style="border:1px solid #000; padding:10px;">Priority</th>
				</tr>
				<xsl:for-each select="ProgressTracking/GanttChart/Schedule">
					<xsl:if test="Priority = 'high'">
						<tr>
							<td style="border:1px solid #000; text-align:center; padding:10px;">
								<xsl:value-of select="StartDateTime"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; text-align:center; padding:10px;">
								<xsl:value-of select="EndDateTime"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; text-align:center; padding:10px;">
								<xsl:value-of select="TaskId"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; text-align:center; padding:10px;">
								<xsl:value-of select="TaskName"></xsl:value-of>
							</td>
							<td style="border:1px solid #000; text-align:center; padding:10px;">
								<xsl:value-of select="Priority"></xsl:value-of>
							</td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</table>
			
			<h3 style="text-align:center;">Task status table</h3>
			<table style="border-collapse:collapse; margin:0 auto;">
				<tr>
					<th style="border:1px solid #000; padding:10px;">Task Id</th>
					<th style="border:1px solid #000; padding:10px;">Percetage Compeleted</th>
					<th style="border:1px solid #000; padding:10px;">Reports</th>
				</tr>
				<xsl:for-each select="ProgressTracking/TaskStatus/Task">
					<xsl:sort select="TaskId"/>
					<xsl:choose>
						<xsl:when test="PerCompeleted &lt;= 50">
							<tr style="background-color:#F6D860;">
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="TaskId"></xsl:value-of>
								</td>
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="PerCompeleted"></xsl:value-of>
								</td>
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="Reports"></xsl:value-of>
								</td>
							</tr>
						</xsl:when>
						<xsl:otherwise>
							<tr style="background-color:#A3DA8D;">
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="TaskId"></xsl:value-of>
								</td>
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="PerCompeleted"></xsl:value-of>
								</td>
								<td style="border:1px solid #000; text-align:center; padding:10px;">
									<xsl:value-of select="Reports"></xsl:value-of>
								</td>
							</tr>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</table>
			
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>