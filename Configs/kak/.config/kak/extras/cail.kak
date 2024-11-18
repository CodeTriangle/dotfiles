define-command svn-initial-comment %{ snippets-insert \
"/*
(C) Copyright Utah State University %sh{date +%Y}.  All rights reserved.
No part of this program may be photocopied, reproduced, or translated
to another program language without the prior written consent of
Utah State University.

Time-stamp: "" ""

(class) ${}
(distribution) 
(usage)
(compile)
(status) Under development
(description)
(keywords) texelGroup

(long_d)
(long_d)

(see_also)
(bugs)
There are no known bugs at this time
(bugs)

(author) Richard Snider

(modifications)
Written %sh{date +%m/%d/%Y} by Richard Snider
Modified: See subversion logs.
(modifications)


Info: $Id$   USU
Revision: $Rev$
$LastChangedDate$
$LastChangedBy$

*/" }

define-command svn-function-comment %{ snippets-insert \
"/*
=============================================================================
*
*	FunctionName:	${}


*	Synopsis:		
*
*	Parameters:

*	Return Values:	0 if success.

*	Author:			Richard Snider
*	Start Date:		%sh{date '+%d %b %Y'}
*	Rev. History:	See the CAIL Subversion repository logs.
*
*
=============================================================================
*/" }

hook global WinSetOption filetype=cpp %{
	set -add global snippets \
		"svn-initial-comment" "//usu" svn-initial-comment \
		"svn-function-comment" "//fun" svn-function-comment
}
