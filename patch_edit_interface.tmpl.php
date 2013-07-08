<?php
/************************************************************************/
/* ATutor                                                               */
/************************************************************************/
/* Copyright (c) 2002-2010                                              */
/* Inclusive Design Institute                                           */
/* http://atutor.ca                                                     */
/*                                                                      */
/* This program is free software. You can redistribute it and/or        */
/* modify it under the terms of the GNU General Public License          */
/* as published by the Free Software Foundation.                        */
/************************************************************************/
// $Id$

require (AT_INCLUDE_PATH.'header.inc.php');
?>

<form enctype="multipart/form-data" action='<?php echo $url; ?>' method="post" name="form" target="messageIFrame">

<div class="input-form">

<iframe id="messageIFrame" name="messageIFrame" src='' style='width:1px;height:1px;border:0' onload="show_message()"></iframe>
<div id="messageDIV"></div>

    <div class="row">
        <h2><?php echo _AT('step1_checkout'); ?></h2><br />
        <p> Input name of new branch to checkout </p>
        <label for="new_branch_checkout"><?php echo _AT('new_branch_checkout'); ?></label><br />
        <input id="new_branch_checkout" name="new_branch_checkout" type="text" maxlength="100" size="30" />
        <input type="submit" name="checkout" value=" <?php echo _AT('checkout'); ?> "/> <br />
    </div>

    <div class="row">
        <h2><?php echo _AT('step2_changes') ?></h2><br />
        <p> Make Changes in files </p>
    </div>

    <div class="row">
        <h2><?php echo _AT('step3_commit') ?></h2><br />
        <p> Commit the made changes </p>
        <input type="button" name="select_files_to_add" value="select_files_to_add" id="select_files"/><br />
        <div id="files"></div>
        <label for="commit_message"><?php echo _AT('commit_message'); ?></label><br />
        <textarea id="commit_message" name="commit_message" rows="4" cols="20" ></textarea><br />
        <input type="submit" name="commit" value=" <?php echo _AT('commit'); ?> "/>
    </div>

    <div class="row">
        <h2><?php echo _AT('step4_test') ?></h2><br />
        <p> Test the Changes before making a Patch </p>
    </div>

    <div class="row">
        <h2><?php echo _AT('step5_push') ?></h2><br />
        <p> Push the Changes </p>
        <input type="submit" name="push" value=" <?php echo _AT('push'); ?> "/>
    </div>

    <div class="row">
        <h2><?php echo _AT('step6_create') ?></h2><br />
        <p> Create a patch to be available as a Pull Request on GitHub </p>
        <span class="required" title="<?php echo _AT('github_username'); ?>">*</span><label for="github_username"><?php echo _AT('github_username'); ?></label><br />
        <input id="github_username" name="github_username" type="text" maxlength="100" size="30" /><br />
        <span class="required" title="<?php echo _AT('github_password'); ?>">*</span><label for="github_password"><?php echo _AT('github_password'); ?></label><br />
        <input id="github_password" name="github_password" type="password" maxlength="100" size="30" /><br /><br />
        <input type="submit" name="create_patch" value=" <?php echo _AT('create_patch'); ?>"/>
    </div>

    <div class="row buttons">
        <input type="button" name="cancel" value=" <?php echo _AT('cancel'); ?> " onclick="location.href='mods/github_patcher/myown_patches.php'" />
    </div>
 </div>
</form>

<script language="JavaScript" type="text/javascript" src="mods/github_patcher/patch_edit_interface.js"></script>

<?php require (AT_INCLUDE_PATH.'footer.inc.php'); ?>
