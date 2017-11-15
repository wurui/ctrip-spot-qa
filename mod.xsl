<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-spot-qa">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-spot-qa" ox-mod="ctrip-spot-qa">
            <h3>大家都在问</h3>
            <ul class="qa-list">
            	<xsl:for-each select="data/qa/i">
            		<li>
            			<h4 class="q">
            				<xsl:value-of select="q"/>
            			</h4>
            			<p class="a">
            				<xsl:value-of select="a_count"/>个回答
            			</p>
            		</li>
            	</xsl:for-each>
            </ul>
            <div class="bottom">
            	<a href="{data/a-link/href}"><xsl:value-of select="data/a-link/title"/></a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
