import 'dart:convert' show json;

part 'object.dart';
part 'function.dart';
part 'convertor.dart';

part 'objects/error.dart';
part 'objects/ok.dart';
part 'objects/tdlib_parameters.dart';
part 'objects/authentication_code_type.dart';
part 'objects/authentication_code_info.dart';
part 'objects/email_address_authentication_code_info.dart';
part 'objects/text_entity.dart';
part 'objects/text_entities.dart';
part 'objects/formatted_text.dart';
part 'objects/terms_of_service.dart';
part 'objects/authorization_state.dart';
part 'objects/password_state.dart';
part 'objects/recovery_email_address.dart';
part 'objects/temporary_password_state.dart';
part 'objects/local_file.dart';
part 'objects/remote_file.dart';
part 'objects/file.dart';
part 'objects/input_file.dart';
part 'objects/photo_size.dart';
part 'objects/minithumbnail.dart';
part 'objects/thumbnail_format.dart';
part 'objects/thumbnail.dart';
part 'objects/mask_point.dart';
part 'objects/mask_position.dart';
part 'objects/closed_vector_path.dart';
part 'objects/poll_option.dart';
part 'objects/poll_type.dart';
part 'objects/animation.dart';
part 'objects/audio.dart';
part 'objects/document.dart';
part 'objects/photo.dart';
part 'objects/sticker.dart';
part 'objects/video.dart';
part 'objects/video_note.dart';
part 'objects/voice_note.dart';
part 'objects/contact.dart';
part 'objects/location.dart';
part 'objects/venue.dart';
part 'objects/game.dart';
part 'objects/poll.dart';
part 'objects/profile_photo.dart';
part 'objects/chat_photo_info.dart';
part 'objects/user_type.dart';
part 'objects/bot_command.dart';
part 'objects/bot_info.dart';
part 'objects/chat_location.dart';
part 'objects/animated_chat_photo.dart';
part 'objects/chat_photo.dart';
part 'objects/chat_photos.dart';
part 'objects/input_chat_photo.dart';
part 'objects/user.dart';
part 'objects/user_full_info.dart';
part 'objects/users.dart';
part 'objects/chat_administrator.dart';
part 'objects/chat_administrators.dart';
part 'objects/chat_permissions.dart';
part 'objects/chat_member_status.dart';
part 'objects/chat_member.dart';
part 'objects/chat_members.dart';
part 'objects/chat_members_filter.dart';
part 'objects/supergroup_members_filter.dart';
part 'objects/basic_group.dart';
part 'objects/basic_group_full_info.dart';
part 'objects/supergroup.dart';
part 'objects/supergroup_full_info.dart';
part 'objects/secret_chat_state.dart';
part 'objects/secret_chat.dart';
part 'objects/message_sender.dart';
part 'objects/message_senders.dart';
part 'objects/message_forward_origin.dart';
part 'objects/message_forward_info.dart';
part 'objects/message_reply_info.dart';
part 'objects/message_interaction_info.dart';
part 'objects/message_sending_state.dart';
part 'objects/message.dart';
part 'objects/messages.dart';
part 'objects/found_messages.dart';
part 'objects/notification_settings_scope.dart';
part 'objects/chat_notification_settings.dart';
part 'objects/scope_notification_settings.dart';
part 'objects/draft_message.dart';
part 'objects/chat_type.dart';
part 'objects/chat_filter.dart';
part 'objects/chat_filter_info.dart';
part 'objects/recommended_chat_filter.dart';
part 'objects/recommended_chat_filters.dart';
part 'objects/chat_list.dart';
part 'objects/chat_lists.dart';
part 'objects/chat_source.dart';
part 'objects/chat_position.dart';
part 'objects/chat.dart';
part 'objects/chats.dart';
part 'objects/chat_nearby.dart';
part 'objects/chats_nearby.dart';
part 'objects/chat_invite_link.dart';
part 'objects/chat_invite_link_info.dart';
part 'objects/public_chat_type.dart';
part 'objects/chat_action_bar.dart';
part 'objects/keyboard_button_type.dart';
part 'objects/keyboard_button.dart';
part 'objects/inline_keyboard_button_type.dart';
part 'objects/inline_keyboard_button.dart';
part 'objects/reply_markup.dart';
part 'objects/login_url_info.dart';
part 'objects/message_thread_info.dart';
part 'objects/rich_text.dart';
part 'objects/page_block_caption.dart';
part 'objects/page_block_list_item.dart';
part 'objects/page_block_horizontal_alignment.dart';
part 'objects/page_block_vertical_alignment.dart';
part 'objects/page_block_table_cell.dart';
part 'objects/page_block_related_article.dart';
part 'objects/page_block.dart';
part 'objects/web_page_instant_view.dart';
part 'objects/web_page.dart';
part 'objects/country_info.dart';
part 'objects/countries.dart';
part 'objects/phone_number_info.dart';
part 'objects/bank_card_action_open_url.dart';
part 'objects/bank_card_info.dart';
part 'objects/address.dart';
part 'objects/labeled_price_part.dart';
part 'objects/invoice.dart';
part 'objects/order_info.dart';
part 'objects/shipping_option.dart';
part 'objects/saved_credentials.dart';
part 'objects/input_credentials.dart';
part 'objects/payments_provider_stripe.dart';
part 'objects/payment_form.dart';
part 'objects/validated_order_info.dart';
part 'objects/payment_result.dart';
part 'objects/payment_receipt.dart';
part 'objects/dated_file.dart';
part 'objects/passport_element_type.dart';
part 'objects/date.dart';
part 'objects/personal_details.dart';
part 'objects/identity_document.dart';
part 'objects/input_identity_document.dart';
part 'objects/personal_document.dart';
part 'objects/input_personal_document.dart';
part 'objects/passport_element.dart';
part 'objects/input_passport_element.dart';
part 'objects/passport_elements.dart';
part 'objects/passport_element_error_source.dart';
part 'objects/passport_element_error.dart';
part 'objects/passport_suitable_element.dart';
part 'objects/passport_required_element.dart';
part 'objects/passport_authorization_form.dart';
part 'objects/passport_elements_with_errors.dart';
part 'objects/encrypted_credentials.dart';
part 'objects/encrypted_passport_element.dart';
part 'objects/input_passport_element_error_source.dart';
part 'objects/input_passport_element_error.dart';
part 'objects/message_content.dart';
part 'objects/text_entity_type.dart';
part 'objects/input_thumbnail.dart';
part 'objects/message_scheduling_state.dart';
part 'objects/message_send_options.dart';
part 'objects/message_copy_options.dart';
part 'objects/input_message_content.dart';
part 'objects/search_messages_filter.dart';
part 'objects/chat_action.dart';
part 'objects/user_status.dart';
part 'objects/stickers.dart';
part 'objects/emojis.dart';
part 'objects/sticker_set.dart';
part 'objects/sticker_set_info.dart';
part 'objects/sticker_sets.dart';
part 'objects/call_discard_reason.dart';
part 'objects/call_protocol.dart';
part 'objects/call_server_type.dart';
part 'objects/call_server.dart';
part 'objects/call_id.dart';
part 'objects/group_call_id.dart';
part 'objects/call_state.dart';
part 'objects/group_call_recent_speaker.dart';
part 'objects/group_call.dart';
part 'objects/group_call_payload_fingerprint.dart';
part 'objects/group_call_payload.dart';
part 'objects/group_call_join_response_candidate.dart';
part 'objects/group_call_join_response.dart';
part 'objects/group_call_participant.dart';
part 'objects/call_problem.dart';
part 'objects/call.dart';
part 'objects/phone_number_authentication_settings.dart';
part 'objects/animations.dart';
part 'objects/dice_stickers.dart';
part 'objects/imported_contacts.dart';
part 'objects/http_url.dart';
part 'objects/input_inline_query_result.dart';
part 'objects/inline_query_result.dart';
part 'objects/inline_query_results.dart';
part 'objects/callback_query_payload.dart';
part 'objects/callback_query_answer.dart';
part 'objects/custom_request_result.dart';
part 'objects/game_high_score.dart';
part 'objects/game_high_scores.dart';
part 'objects/chat_event_action.dart';
part 'objects/chat_event.dart';
part 'objects/chat_events.dart';
part 'objects/chat_event_log_filters.dart';
part 'objects/language_pack_string_value.dart';
part 'objects/language_pack_string.dart';
part 'objects/language_pack_strings.dart';
part 'objects/language_pack_info.dart';
part 'objects/localization_target_info.dart';
part 'objects/device_token.dart';
part 'objects/push_receiver_id.dart';
part 'objects/background_fill.dart';
part 'objects/background_type.dart';
part 'objects/background.dart';
part 'objects/backgrounds.dart';
part 'objects/input_background.dart';
part 'objects/hashtags.dart';
part 'objects/can_transfer_ownership_result.dart';
part 'objects/check_chat_username_result.dart';
part 'objects/push_message_content.dart';
part 'objects/notification_type.dart';
part 'objects/notification_group_type.dart';
part 'objects/notification.dart';
part 'objects/notification_group.dart';
part 'objects/option_value.dart';
part 'objects/json_object_member.dart';
part 'objects/json_value.dart';
part 'objects/user_privacy_setting_rule.dart';
part 'objects/user_privacy_setting_rules.dart';
part 'objects/user_privacy_setting.dart';
part 'objects/account_ttl.dart';
part 'objects/session.dart';
part 'objects/sessions.dart';
part 'objects/connected_website.dart';
part 'objects/connected_websites.dart';
part 'objects/chat_report_reason.dart';
part 'objects/message_link.dart';
part 'objects/message_link_info.dart';
part 'objects/file_part.dart';
part 'objects/file_type.dart';
part 'objects/storage_statistics_by_file_type.dart';
part 'objects/storage_statistics_by_chat.dart';
part 'objects/storage_statistics.dart';
part 'objects/storage_statistics_fast.dart';
part 'objects/database_statistics.dart';
part 'objects/network_type.dart';
part 'objects/network_statistics_entry.dart';
part 'objects/network_statistics.dart';
part 'objects/auto_download_settings.dart';
part 'objects/auto_download_settings_presets.dart';
part 'objects/connection_state.dart';
part 'objects/top_chat_category.dart';
part 'objects/t_me_url_type.dart';
part 'objects/t_me_url.dart';
part 'objects/t_me_urls.dart';
part 'objects/suggested_action.dart';
part 'objects/count.dart';
part 'objects/text.dart';
part 'objects/seconds.dart';
part 'objects/deep_link_info.dart';
part 'objects/text_parse_mode.dart';
part 'objects/proxy_type.dart';
part 'objects/proxy.dart';
part 'objects/proxies.dart';
part 'objects/input_sticker.dart';
part 'objects/date_range.dart';
part 'objects/statistical_value.dart';
part 'objects/statistical_graph.dart';
part 'objects/chat_statistics_message_interaction_info.dart';
part 'objects/chat_statistics_message_sender_info.dart';
part 'objects/chat_statistics_administrator_actions_info.dart';
part 'objects/chat_statistics_inviter_info.dart';
part 'objects/chat_statistics.dart';
part 'objects/message_statistics.dart';
part 'objects/point.dart';
part 'objects/vector_path_command.dart';
part 'objects/update.dart';
part 'objects/updates.dart';
part 'objects/log_stream.dart';
part 'objects/log_verbosity_level.dart';
part 'objects/log_tags.dart';
part 'objects/test_int.dart';
part 'objects/test_string.dart';
part 'objects/test_bytes.dart';
part 'objects/test_vector_int.dart';
part 'objects/test_vector_int_object.dart';
part 'objects/test_vector_string.dart';
part 'objects/test_vector_string_object.dart';
part 'functions/get_authorization_state.dart';
part 'functions/set_tdlib_parameters.dart';
part 'functions/check_database_encryption_key.dart';
part 'functions/set_authentication_phone_number.dart';
part 'functions/resend_authentication_code.dart';
part 'functions/check_authentication_code.dart';
part 'functions/request_qr_code_authentication.dart';
part 'functions/register_user.dart';
part 'functions/check_authentication_password.dart';
part 'functions/request_authentication_password_recovery.dart';
part 'functions/recover_authentication_password.dart';
part 'functions/check_authentication_bot_token.dart';
part 'functions/log_out.dart';
part 'functions/close.dart';
part 'functions/destroy.dart';
part 'functions/confirm_qr_code_authentication.dart';
part 'functions/get_current_state.dart';
part 'functions/set_database_encryption_key.dart';
part 'functions/get_password_state.dart';
part 'functions/set_password.dart';
part 'functions/get_recovery_email_address.dart';
part 'functions/set_recovery_email_address.dart';
part 'functions/check_recovery_email_address_code.dart';
part 'functions/resend_recovery_email_address_code.dart';
part 'functions/request_password_recovery.dart';
part 'functions/recover_password.dart';
part 'functions/create_temporary_password.dart';
part 'functions/get_temporary_password_state.dart';
part 'functions/get_me.dart';
part 'functions/get_user.dart';
part 'functions/get_user_full_info.dart';
part 'functions/get_basic_group.dart';
part 'functions/get_basic_group_full_info.dart';
part 'functions/get_supergroup.dart';
part 'functions/get_supergroup_full_info.dart';
part 'functions/get_secret_chat.dart';
part 'functions/get_chat.dart';
part 'functions/get_message.dart';
part 'functions/get_message_locally.dart';
part 'functions/get_replied_message.dart';
part 'functions/get_chat_pinned_message.dart';
part 'functions/get_callback_query_message.dart';
part 'functions/get_messages.dart';
part 'functions/get_message_thread.dart';
part 'functions/get_file.dart';
part 'functions/get_remote_file.dart';
part 'functions/get_chats.dart';
part 'functions/search_public_chat.dart';
part 'functions/search_public_chats.dart';
part 'functions/search_chats.dart';
part 'functions/search_chats_on_server.dart';
part 'functions/search_chats_nearby.dart';
part 'functions/get_top_chats.dart';
part 'functions/remove_top_chat.dart';
part 'functions/add_recently_found_chat.dart';
part 'functions/remove_recently_found_chat.dart';
part 'functions/clear_recently_found_chats.dart';
part 'functions/check_chat_username.dart';
part 'functions/get_created_public_chats.dart';
part 'functions/check_created_public_chats_limit.dart';
part 'functions/get_suitable_discussion_chats.dart';
part 'functions/get_inactive_supergroup_chats.dart';
part 'functions/get_groups_in_common.dart';
part 'functions/get_chat_history.dart';
part 'functions/get_message_thread_history.dart';
part 'functions/delete_chat_history.dart';
part 'functions/search_chat_messages.dart';
part 'functions/search_messages.dart';
part 'functions/search_secret_messages.dart';
part 'functions/search_call_messages.dart';
part 'functions/search_chat_recent_location_messages.dart';
part 'functions/get_active_live_location_messages.dart';
part 'functions/get_chat_message_by_date.dart';
part 'functions/get_chat_message_count.dart';
part 'functions/get_chat_scheduled_messages.dart';
part 'functions/get_message_public_forwards.dart';
part 'functions/remove_notification.dart';
part 'functions/remove_notification_group.dart';
part 'functions/get_message_link.dart';
part 'functions/get_message_embedding_code.dart';
part 'functions/get_message_link_info.dart';
part 'functions/send_message.dart';
part 'functions/send_message_album.dart';
part 'functions/send_bot_start_message.dart';
part 'functions/send_inline_query_result_message.dart';
part 'functions/forward_messages.dart';
part 'functions/resend_messages.dart';
part 'functions/send_chat_set_ttl_message.dart';
part 'functions/send_chat_screenshot_taken_notification.dart';
part 'functions/add_local_message.dart';
part 'functions/delete_messages.dart';
part 'functions/delete_chat_messages_from_user.dart';
part 'functions/edit_message_text.dart';
part 'functions/edit_message_live_location.dart';
part 'functions/edit_message_media.dart';
part 'functions/edit_message_caption.dart';
part 'functions/edit_message_reply_markup.dart';
part 'functions/edit_inline_message_text.dart';
part 'functions/edit_inline_message_live_location.dart';
part 'functions/edit_inline_message_media.dart';
part 'functions/edit_inline_message_caption.dart';
part 'functions/edit_inline_message_reply_markup.dart';
part 'functions/edit_message_scheduling_state.dart';
part 'functions/get_text_entities.dart';
part 'functions/parse_text_entities.dart';
part 'functions/parse_markdown.dart';
part 'functions/get_markdown_text.dart';
part 'functions/get_file_mime_type.dart';
part 'functions/get_file_extension.dart';
part 'functions/clean_file_name.dart';
part 'functions/get_language_pack_string.dart';
part 'functions/get_json_value.dart';
part 'functions/get_json_string.dart';
part 'functions/set_poll_answer.dart';
part 'functions/get_poll_voters.dart';
part 'functions/stop_poll.dart';
part 'functions/hide_suggested_action.dart';
part 'functions/get_login_url_info.dart';
part 'functions/get_login_url.dart';
part 'functions/get_inline_query_results.dart';
part 'functions/answer_inline_query.dart';
part 'functions/get_callback_query_answer.dart';
part 'functions/answer_callback_query.dart';
part 'functions/answer_shipping_query.dart';
part 'functions/answer_pre_checkout_query.dart';
part 'functions/set_game_score.dart';
part 'functions/set_inline_game_score.dart';
part 'functions/get_game_high_scores.dart';
part 'functions/get_inline_game_high_scores.dart';
part 'functions/delete_chat_reply_markup.dart';
part 'functions/send_chat_action.dart';
part 'functions/open_chat.dart';
part 'functions/close_chat.dart';
part 'functions/view_messages.dart';
part 'functions/open_message_content.dart';
part 'functions/read_all_chat_mentions.dart';
part 'functions/create_private_chat.dart';
part 'functions/create_basic_group_chat.dart';
part 'functions/create_supergroup_chat.dart';
part 'functions/create_secret_chat.dart';
part 'functions/create_new_basic_group_chat.dart';
part 'functions/create_new_supergroup_chat.dart';
part 'functions/create_new_secret_chat.dart';
part 'functions/upgrade_basic_group_chat_to_supergroup_chat.dart';
part 'functions/get_chat_lists_to_add_chat.dart';
part 'functions/add_chat_to_list.dart';
part 'functions/get_chat_filter.dart';
part 'functions/create_chat_filter.dart';
part 'functions/edit_chat_filter.dart';
part 'functions/delete_chat_filter.dart';
part 'functions/reorder_chat_filters.dart';
part 'functions/get_recommended_chat_filters.dart';
part 'functions/get_chat_filter_default_icon_name.dart';
part 'functions/set_chat_title.dart';
part 'functions/set_chat_photo.dart';
part 'functions/set_chat_permissions.dart';
part 'functions/set_chat_draft_message.dart';
part 'functions/set_chat_notification_settings.dart';
part 'functions/toggle_chat_is_marked_as_unread.dart';
part 'functions/toggle_chat_default_disable_notification.dart';
part 'functions/set_chat_client_data.dart';
part 'functions/set_chat_description.dart';
part 'functions/set_chat_discussion_group.dart';
part 'functions/set_chat_location.dart';
part 'functions/set_chat_slow_mode_delay.dart';
part 'functions/pin_chat_message.dart';
part 'functions/unpin_chat_message.dart';
part 'functions/unpin_all_chat_messages.dart';
part 'functions/join_chat.dart';
part 'functions/leave_chat.dart';
part 'functions/add_chat_member.dart';
part 'functions/add_chat_members.dart';
part 'functions/set_chat_member_status.dart';
part 'functions/can_transfer_ownership.dart';
part 'functions/transfer_chat_ownership.dart';
part 'functions/get_chat_member.dart';
part 'functions/search_chat_members.dart';
part 'functions/get_chat_administrators.dart';
part 'functions/clear_all_draft_messages.dart';
part 'functions/get_chat_notification_settings_exceptions.dart';
part 'functions/get_scope_notification_settings.dart';
part 'functions/set_scope_notification_settings.dart';
part 'functions/reset_all_notification_settings.dart';
part 'functions/toggle_chat_is_pinned.dart';
part 'functions/set_pinned_chats.dart';
part 'functions/download_file.dart';
part 'functions/get_file_downloaded_prefix_size.dart';
part 'functions/cancel_download_file.dart';
part 'functions/upload_file.dart';
part 'functions/cancel_upload_file.dart';
part 'functions/write_generated_file_part.dart';
part 'functions/set_file_generation_progress.dart';
part 'functions/finish_file_generation.dart';
part 'functions/read_file_part.dart';
part 'functions/delete_file.dart';
part 'functions/generate_chat_invite_link.dart';
part 'functions/check_chat_invite_link.dart';
part 'functions/join_chat_by_invite_link.dart';
part 'functions/create_call.dart';
part 'functions/accept_call.dart';
part 'functions/send_call_signaling_data.dart';
part 'functions/discard_call.dart';
part 'functions/send_call_rating.dart';
part 'functions/send_call_debug_information.dart';
part 'functions/create_voice_chat.dart';
part 'functions/get_group_call.dart';
part 'functions/join_group_call.dart';
part 'functions/toggle_group_call_mute_new_participants.dart';
part 'functions/invite_group_call_participants.dart';
part 'functions/set_group_call_participant_is_speaking.dart';
part 'functions/toggle_group_call_participant_is_muted.dart';
part 'functions/load_group_call_participants.dart';
part 'functions/leave_group_call.dart';
part 'functions/discard_group_call.dart';
part 'functions/toggle_message_sender_is_blocked.dart';
part 'functions/block_message_sender_from_replies.dart';
part 'functions/get_blocked_message_senders.dart';
part 'functions/add_contact.dart';
part 'functions/import_contacts.dart';
part 'functions/get_contacts.dart';
part 'functions/search_contacts.dart';
part 'functions/remove_contacts.dart';
part 'functions/get_imported_contact_count.dart';
part 'functions/change_imported_contacts.dart';
part 'functions/clear_imported_contacts.dart';
part 'functions/share_phone_number.dart';
part 'functions/get_user_profile_photos.dart';
part 'functions/get_stickers.dart';
part 'functions/search_stickers.dart';
part 'functions/get_installed_sticker_sets.dart';
part 'functions/get_archived_sticker_sets.dart';
part 'functions/get_trending_sticker_sets.dart';
part 'functions/get_attached_sticker_sets.dart';
part 'functions/get_sticker_set.dart';
part 'functions/search_sticker_set.dart';
part 'functions/search_installed_sticker_sets.dart';
part 'functions/search_sticker_sets.dart';
part 'functions/change_sticker_set.dart';
part 'functions/view_trending_sticker_sets.dart';
part 'functions/reorder_installed_sticker_sets.dart';
part 'functions/get_recent_stickers.dart';
part 'functions/add_recent_sticker.dart';
part 'functions/remove_recent_sticker.dart';
part 'functions/clear_recent_stickers.dart';
part 'functions/get_favorite_stickers.dart';
part 'functions/add_favorite_sticker.dart';
part 'functions/remove_favorite_sticker.dart';
part 'functions/get_sticker_emojis.dart';
part 'functions/search_emojis.dart';
part 'functions/get_emoji_suggestions_url.dart';
part 'functions/get_saved_animations.dart';
part 'functions/add_saved_animation.dart';
part 'functions/remove_saved_animation.dart';
part 'functions/get_recent_inline_bots.dart';
part 'functions/search_hashtags.dart';
part 'functions/remove_recent_hashtag.dart';
part 'functions/get_web_page_preview.dart';
part 'functions/get_web_page_instant_view.dart';
part 'functions/set_profile_photo.dart';
part 'functions/delete_profile_photo.dart';
part 'functions/set_name.dart';
part 'functions/set_bio.dart';
part 'functions/set_username.dart';
part 'functions/set_location.dart';
part 'functions/change_phone_number.dart';
part 'functions/resend_change_phone_number_code.dart';
part 'functions/check_change_phone_number_code.dart';
part 'functions/set_commands.dart';
part 'functions/get_active_sessions.dart';
part 'functions/terminate_session.dart';
part 'functions/terminate_all_other_sessions.dart';
part 'functions/get_connected_websites.dart';
part 'functions/disconnect_website.dart';
part 'functions/disconnect_all_websites.dart';
part 'functions/set_supergroup_username.dart';
part 'functions/set_supergroup_sticker_set.dart';
part 'functions/toggle_supergroup_sign_messages.dart';
part 'functions/toggle_supergroup_is_all_history_available.dart';
part 'functions/report_supergroup_spam.dart';
part 'functions/get_supergroup_members.dart';
part 'functions/delete_supergroup.dart';
part 'functions/close_secret_chat.dart';
part 'functions/get_chat_event_log.dart';
part 'functions/get_payment_form.dart';
part 'functions/validate_order_info.dart';
part 'functions/send_payment_form.dart';
part 'functions/get_payment_receipt.dart';
part 'functions/get_saved_order_info.dart';
part 'functions/delete_saved_order_info.dart';
part 'functions/delete_saved_credentials.dart';
part 'functions/get_support_user.dart';
part 'functions/get_backgrounds.dart';
part 'functions/get_background_url.dart';
part 'functions/search_background.dart';
part 'functions/set_background.dart';
part 'functions/remove_background.dart';
part 'functions/reset_backgrounds.dart';
part 'functions/get_localization_target_info.dart';
part 'functions/get_language_pack_info.dart';
part 'functions/get_language_pack_strings.dart';
part 'functions/synchronize_language_pack.dart';
part 'functions/add_custom_server_language_pack.dart';
part 'functions/set_custom_language_pack.dart';
part 'functions/edit_custom_language_pack_info.dart';
part 'functions/set_custom_language_pack_string.dart';
part 'functions/delete_language_pack.dart';
part 'functions/register_device.dart';
part 'functions/process_push_notification.dart';
part 'functions/get_push_receiver_id.dart';
part 'functions/get_recently_visited_t_me_urls.dart';
part 'functions/set_user_privacy_setting_rules.dart';
part 'functions/get_user_privacy_setting_rules.dart';
part 'functions/get_option.dart';
part 'functions/set_option.dart';
part 'functions/set_account_ttl.dart';
part 'functions/get_account_ttl.dart';
part 'functions/delete_account.dart';
part 'functions/remove_chat_action_bar.dart';
part 'functions/report_chat.dart';
part 'functions/get_chat_statistics_url.dart';
part 'functions/get_chat_statistics.dart';
part 'functions/get_message_statistics.dart';
part 'functions/get_statistical_graph.dart';
part 'functions/get_storage_statistics.dart';
part 'functions/get_storage_statistics_fast.dart';
part 'functions/get_database_statistics.dart';
part 'functions/optimize_storage.dart';
part 'functions/set_network_type.dart';
part 'functions/get_network_statistics.dart';
part 'functions/add_network_statistics.dart';
part 'functions/reset_network_statistics.dart';
part 'functions/get_auto_download_settings_presets.dart';
part 'functions/set_auto_download_settings.dart';
part 'functions/get_bank_card_info.dart';
part 'functions/get_passport_element.dart';
part 'functions/get_all_passport_elements.dart';
part 'functions/set_passport_element.dart';
part 'functions/delete_passport_element.dart';
part 'functions/set_passport_element_errors.dart';
part 'functions/get_preferred_country_language.dart';
part 'functions/send_phone_number_verification_code.dart';
part 'functions/resend_phone_number_verification_code.dart';
part 'functions/check_phone_number_verification_code.dart';
part 'functions/send_email_address_verification_code.dart';
part 'functions/resend_email_address_verification_code.dart';
part 'functions/check_email_address_verification_code.dart';
part 'functions/get_passport_authorization_form.dart';
part 'functions/get_passport_authorization_form_available_elements.dart';
part 'functions/send_passport_authorization_form.dart';
part 'functions/send_phone_number_confirmation_code.dart';
part 'functions/resend_phone_number_confirmation_code.dart';
part 'functions/check_phone_number_confirmation_code.dart';
part 'functions/set_bot_updates_status.dart';
part 'functions/upload_sticker_file.dart';
part 'functions/create_new_sticker_set.dart';
part 'functions/add_sticker_to_set.dart';
part 'functions/set_sticker_set_thumbnail.dart';
part 'functions/set_sticker_position_in_set.dart';
part 'functions/remove_sticker_from_set.dart';
part 'functions/get_map_thumbnail_file.dart';
part 'functions/accept_terms_of_service.dart';
part 'functions/send_custom_request.dart';
part 'functions/answer_custom_query.dart';
part 'functions/set_alarm.dart';
part 'functions/get_countries.dart';
part 'functions/get_country_code.dart';
part 'functions/get_phone_number_info.dart';
part 'functions/get_invite_text.dart';
part 'functions/get_deep_link_info.dart';
part 'functions/get_application_config.dart';
part 'functions/save_application_log_event.dart';
part 'functions/add_proxy.dart';
part 'functions/edit_proxy.dart';
part 'functions/enable_proxy.dart';
part 'functions/disable_proxy.dart';
part 'functions/remove_proxy.dart';
part 'functions/get_proxies.dart';
part 'functions/get_proxy_link.dart';
part 'functions/ping_proxy.dart';
part 'functions/set_log_stream.dart';
part 'functions/get_log_stream.dart';
part 'functions/set_log_verbosity_level.dart';
part 'functions/get_log_verbosity_level.dart';
part 'functions/get_log_tags.dart';
part 'functions/set_log_tag_verbosity_level.dart';
part 'functions/get_log_tag_verbosity_level.dart';
part 'functions/add_log_message.dart';
part 'functions/test_call_empty.dart';
part 'functions/test_call_string.dart';
part 'functions/test_call_bytes.dart';
part 'functions/test_call_vector_int.dart';
part 'functions/test_call_vector_int_object.dart';
part 'functions/test_call_vector_string.dart';
part 'functions/test_call_vector_string_object.dart';
part 'functions/test_square_int.dart';
part 'functions/test_network.dart';
part 'functions/test_proxy.dart';
part 'functions/test_get_difference.dart';
part 'functions/test_use_update.dart';
part 'functions/test_return_error.dart';

final Map<String, TdObject Function(Map<String, dynamic>)> allObjects = {
  'error': (d) => TdError.fromJson(d),
  'ok': (d) => Ok.fromJson(d),
  'tdlibParameters': (d) => TdlibParameters.fromJson(d),
  'authenticationCodeType': (d) => AuthenticationCodeType.fromJson(d),
  'authenticationCodeTypeTelegramMessage': (d) =>
      AuthenticationCodeTypeTelegramMessage.fromJson(d),
  'authenticationCodeTypeSms': (d) => AuthenticationCodeTypeSms.fromJson(d),
  'authenticationCodeTypeCall': (d) => AuthenticationCodeTypeCall.fromJson(d),
  'authenticationCodeTypeFlashCall': (d) =>
      AuthenticationCodeTypeFlashCall.fromJson(d),
  'authenticationCodeInfo': (d) => AuthenticationCodeInfo.fromJson(d),
  'emailAddressAuthenticationCodeInfo': (d) =>
      EmailAddressAuthenticationCodeInfo.fromJson(d),
  'textEntity': (d) => TextEntity.fromJson(d),
  'textEntities': (d) => TextEntities.fromJson(d),
  'formattedText': (d) => FormattedText.fromJson(d),
  'termsOfService': (d) => TermsOfService.fromJson(d),
  'authorizationState': (d) => AuthorizationState.fromJson(d),
  'authorizationStateWaitTdlibParameters': (d) =>
      AuthorizationStateWaitTdlibParameters.fromJson(d),
  'authorizationStateWaitEncryptionKey': (d) =>
      AuthorizationStateWaitEncryptionKey.fromJson(d),
  'authorizationStateWaitPhoneNumber': (d) =>
      AuthorizationStateWaitPhoneNumber.fromJson(d),
  'authorizationStateWaitCode': (d) => AuthorizationStateWaitCode.fromJson(d),
  'authorizationStateWaitOtherDeviceConfirmation': (d) =>
      AuthorizationStateWaitOtherDeviceConfirmation.fromJson(d),
  'authorizationStateWaitRegistration': (d) =>
      AuthorizationStateWaitRegistration.fromJson(d),
  'authorizationStateWaitPassword': (d) =>
      AuthorizationStateWaitPassword.fromJson(d),
  'authorizationStateReady': (d) => AuthorizationStateReady.fromJson(d),
  'authorizationStateLoggingOut': (d) =>
      AuthorizationStateLoggingOut.fromJson(d),
  'authorizationStateClosing': (d) => AuthorizationStateClosing.fromJson(d),
  'authorizationStateClosed': (d) => AuthorizationStateClosed.fromJson(d),
  'passwordState': (d) => PasswordState.fromJson(d),
  'recoveryEmailAddress': (d) => RecoveryEmailAddress.fromJson(d),
  'temporaryPasswordState': (d) => TemporaryPasswordState.fromJson(d),
  'localFile': (d) => LocalFile.fromJson(d),
  'remoteFile': (d) => RemoteFile.fromJson(d),
  'file': (d) => File.fromJson(d),
  'inputFile': (d) => InputFile.fromJson(d),
  'inputFileId': (d) => InputFileId.fromJson(d),
  'inputFileRemote': (d) => InputFileRemote.fromJson(d),
  'inputFileLocal': (d) => InputFileLocal.fromJson(d),
  'inputFileGenerated': (d) => InputFileGenerated.fromJson(d),
  'photoSize': (d) => PhotoSize.fromJson(d),
  'minithumbnail': (d) => Minithumbnail.fromJson(d),
  'thumbnailFormat': (d) => ThumbnailFormat.fromJson(d),
  'thumbnailFormatJpeg': (d) => ThumbnailFormatJpeg.fromJson(d),
  'thumbnailFormatPng': (d) => ThumbnailFormatPng.fromJson(d),
  'thumbnailFormatWebp': (d) => ThumbnailFormatWebp.fromJson(d),
  'thumbnailFormatGif': (d) => ThumbnailFormatGif.fromJson(d),
  'thumbnailFormatTgs': (d) => ThumbnailFormatTgs.fromJson(d),
  'thumbnailFormatMpeg4': (d) => ThumbnailFormatMpeg4.fromJson(d),
  'thumbnail': (d) => Thumbnail.fromJson(d),
  'maskPoint': (d) => MaskPoint.fromJson(d),
  'maskPointForehead': (d) => MaskPointForehead.fromJson(d),
  'maskPointEyes': (d) => MaskPointEyes.fromJson(d),
  'maskPointMouth': (d) => MaskPointMouth.fromJson(d),
  'maskPointChin': (d) => MaskPointChin.fromJson(d),
  'maskPosition': (d) => MaskPosition.fromJson(d),
  'closedVectorPath': (d) => ClosedVectorPath.fromJson(d),
  'pollOption': (d) => PollOption.fromJson(d),
  'pollType': (d) => PollType.fromJson(d),
  'pollTypeRegular': (d) => PollTypeRegular.fromJson(d),
  'pollTypeQuiz': (d) => PollTypeQuiz.fromJson(d),
  'animation': (d) => Animation.fromJson(d),
  'audio': (d) => Audio.fromJson(d),
  'document': (d) => Document.fromJson(d),
  'photo': (d) => Photo.fromJson(d),
  'sticker': (d) => Sticker.fromJson(d),
  'video': (d) => Video.fromJson(d),
  'videoNote': (d) => VideoNote.fromJson(d),
  'voiceNote': (d) => VoiceNote.fromJson(d),
  'contact': (d) => Contact.fromJson(d),
  'location': (d) => Location.fromJson(d),
  'venue': (d) => Venue.fromJson(d),
  'game': (d) => Game.fromJson(d),
  'poll': (d) => Poll.fromJson(d),
  'profilePhoto': (d) => ProfilePhoto.fromJson(d),
  'chatPhotoInfo': (d) => ChatPhotoInfo.fromJson(d),
  'userType': (d) => UserType.fromJson(d),
  'userTypeRegular': (d) => UserTypeRegular.fromJson(d),
  'userTypeDeleted': (d) => UserTypeDeleted.fromJson(d),
  'userTypeBot': (d) => UserTypeBot.fromJson(d),
  'userTypeUnknown': (d) => UserTypeUnknown.fromJson(d),
  'botCommand': (d) => BotCommand.fromJson(d),
  'botInfo': (d) => BotInfo.fromJson(d),
  'chatLocation': (d) => ChatLocation.fromJson(d),
  'animatedChatPhoto': (d) => AnimatedChatPhoto.fromJson(d),
  'chatPhoto': (d) => ChatPhoto.fromJson(d),
  'chatPhotos': (d) => ChatPhotos.fromJson(d),
  'inputChatPhoto': (d) => InputChatPhoto.fromJson(d),
  'inputChatPhotoPrevious': (d) => InputChatPhotoPrevious.fromJson(d),
  'inputChatPhotoStatic': (d) => InputChatPhotoStatic.fromJson(d),
  'inputChatPhotoAnimation': (d) => InputChatPhotoAnimation.fromJson(d),
  'user': (d) => User.fromJson(d),
  'userFullInfo': (d) => UserFullInfo.fromJson(d),
  'users': (d) => Users.fromJson(d),
  'chatAdministrator': (d) => ChatAdministrator.fromJson(d),
  'chatAdministrators': (d) => ChatAdministrators.fromJson(d),
  'chatPermissions': (d) => ChatPermissions.fromJson(d),
  'chatMemberStatus': (d) => ChatMemberStatus.fromJson(d),
  'chatMemberStatusCreator': (d) => ChatMemberStatusCreator.fromJson(d),
  'chatMemberStatusAdministrator': (d) =>
      ChatMemberStatusAdministrator.fromJson(d),
  'chatMemberStatusMember': (d) => ChatMemberStatusMember.fromJson(d),
  'chatMemberStatusRestricted': (d) => ChatMemberStatusRestricted.fromJson(d),
  'chatMemberStatusLeft': (d) => ChatMemberStatusLeft.fromJson(d),
  'chatMemberStatusBanned': (d) => ChatMemberStatusBanned.fromJson(d),
  'chatMember': (d) => ChatMember.fromJson(d),
  'chatMembers': (d) => ChatMembers.fromJson(d),
  'chatMembersFilter': (d) => ChatMembersFilter.fromJson(d),
  'chatMembersFilterContacts': (d) => ChatMembersFilterContacts.fromJson(d),
  'chatMembersFilterAdministrators': (d) =>
      ChatMembersFilterAdministrators.fromJson(d),
  'chatMembersFilterMembers': (d) => ChatMembersFilterMembers.fromJson(d),
  'chatMembersFilterMention': (d) => ChatMembersFilterMention.fromJson(d),
  'chatMembersFilterRestricted': (d) => ChatMembersFilterRestricted.fromJson(d),
  'chatMembersFilterBanned': (d) => ChatMembersFilterBanned.fromJson(d),
  'chatMembersFilterBots': (d) => ChatMembersFilterBots.fromJson(d),
  'supergroupMembersFilter': (d) => SupergroupMembersFilter.fromJson(d),
  'supergroupMembersFilterRecent': (d) =>
      SupergroupMembersFilterRecent.fromJson(d),
  'supergroupMembersFilterContacts': (d) =>
      SupergroupMembersFilterContacts.fromJson(d),
  'supergroupMembersFilterAdministrators': (d) =>
      SupergroupMembersFilterAdministrators.fromJson(d),
  'supergroupMembersFilterSearch': (d) =>
      SupergroupMembersFilterSearch.fromJson(d),
  'supergroupMembersFilterRestricted': (d) =>
      SupergroupMembersFilterRestricted.fromJson(d),
  'supergroupMembersFilterBanned': (d) =>
      SupergroupMembersFilterBanned.fromJson(d),
  'supergroupMembersFilterMention': (d) =>
      SupergroupMembersFilterMention.fromJson(d),
  'supergroupMembersFilterBots': (d) => SupergroupMembersFilterBots.fromJson(d),
  'basicGroup': (d) => BasicGroup.fromJson(d),
  'basicGroupFullInfo': (d) => BasicGroupFullInfo.fromJson(d),
  'supergroup': (d) => Supergroup.fromJson(d),
  'supergroupFullInfo': (d) => SupergroupFullInfo.fromJson(d),
  'secretChatState': (d) => SecretChatState.fromJson(d),
  'secretChatStatePending': (d) => SecretChatStatePending.fromJson(d),
  'secretChatStateReady': (d) => SecretChatStateReady.fromJson(d),
  'secretChatStateClosed': (d) => SecretChatStateClosed.fromJson(d),
  'secretChat': (d) => SecretChat.fromJson(d),
  'messageSender': (d) => MessageSender.fromJson(d),
  'messageSenderUser': (d) => MessageSenderUser.fromJson(d),
  'messageSenderChat': (d) => MessageSenderChat.fromJson(d),
  'messageSenders': (d) => MessageSenders.fromJson(d),
  'messageForwardOrigin': (d) => MessageForwardOrigin.fromJson(d),
  'messageForwardOriginUser': (d) => MessageForwardOriginUser.fromJson(d),
  'messageForwardOriginChat': (d) => MessageForwardOriginChat.fromJson(d),
  'messageForwardOriginHiddenUser': (d) =>
      MessageForwardOriginHiddenUser.fromJson(d),
  'messageForwardOriginChannel': (d) => MessageForwardOriginChannel.fromJson(d),
  'messageForwardInfo': (d) => MessageForwardInfo.fromJson(d),
  'messageReplyInfo': (d) => MessageReplyInfo.fromJson(d),
  'messageInteractionInfo': (d) => MessageInteractionInfo.fromJson(d),
  'messageSendingState': (d) => MessageSendingState.fromJson(d),
  'messageSendingStatePending': (d) => MessageSendingStatePending.fromJson(d),
  'messageSendingStateFailed': (d) => MessageSendingStateFailed.fromJson(d),
  'message': (d) => Message.fromJson(d),
  'messages': (d) => Messages.fromJson(d),
  'foundMessages': (d) => FoundMessages.fromJson(d),
  'notificationSettingsScope': (d) => NotificationSettingsScope.fromJson(d),
  'notificationSettingsScopePrivateChats': (d) =>
      NotificationSettingsScopePrivateChats.fromJson(d),
  'notificationSettingsScopeGroupChats': (d) =>
      NotificationSettingsScopeGroupChats.fromJson(d),
  'notificationSettingsScopeChannelChats': (d) =>
      NotificationSettingsScopeChannelChats.fromJson(d),
  'chatNotificationSettings': (d) => ChatNotificationSettings.fromJson(d),
  'scopeNotificationSettings': (d) => ScopeNotificationSettings.fromJson(d),
  'draftMessage': (d) => DraftMessage.fromJson(d),
  'chatType': (d) => ChatType.fromJson(d),
  'chatTypePrivate': (d) => ChatTypePrivate.fromJson(d),
  'chatTypeBasicGroup': (d) => ChatTypeBasicGroup.fromJson(d),
  'chatTypeSupergroup': (d) => ChatTypeSupergroup.fromJson(d),
  'chatTypeSecret': (d) => ChatTypeSecret.fromJson(d),
  'chatFilter': (d) => ChatFilter.fromJson(d),
  'chatFilterInfo': (d) => ChatFilterInfo.fromJson(d),
  'recommendedChatFilter': (d) => RecommendedChatFilter.fromJson(d),
  'recommendedChatFilters': (d) => RecommendedChatFilters.fromJson(d),
  'chatList': (d) => ChatList.fromJson(d),
  'chatListMain': (d) => ChatListMain.fromJson(d),
  'chatListArchive': (d) => ChatListArchive.fromJson(d),
  'chatListFilter': (d) => ChatListFilter.fromJson(d),
  'chatLists': (d) => ChatLists.fromJson(d),
  'chatSource': (d) => ChatSource.fromJson(d),
  'chatSourceMtprotoProxy': (d) => ChatSourceMtprotoProxy.fromJson(d),
  'chatSourcePublicServiceAnnouncement': (d) =>
      ChatSourcePublicServiceAnnouncement.fromJson(d),
  'chatPosition': (d) => ChatPosition.fromJson(d),
  'chat': (d) => Chat.fromJson(d),
  'chats': (d) => Chats.fromJson(d),
  'chatNearby': (d) => ChatNearby.fromJson(d),
  'chatsNearby': (d) => ChatsNearby.fromJson(d),
  'chatInviteLink': (d) => ChatInviteLink.fromJson(d),
  'chatInviteLinkInfo': (d) => ChatInviteLinkInfo.fromJson(d),
  'publicChatType': (d) => PublicChatType.fromJson(d),
  'publicChatTypeHasUsername': (d) => PublicChatTypeHasUsername.fromJson(d),
  'publicChatTypeIsLocationBased': (d) =>
      PublicChatTypeIsLocationBased.fromJson(d),
  'chatActionBar': (d) => ChatActionBar.fromJson(d),
  'chatActionBarReportSpam': (d) => ChatActionBarReportSpam.fromJson(d),
  'chatActionBarReportUnrelatedLocation': (d) =>
      ChatActionBarReportUnrelatedLocation.fromJson(d),
  'chatActionBarReportAddBlock': (d) => ChatActionBarReportAddBlock.fromJson(d),
  'chatActionBarAddContact': (d) => ChatActionBarAddContact.fromJson(d),
  'chatActionBarSharePhoneNumber': (d) =>
      ChatActionBarSharePhoneNumber.fromJson(d),
  'keyboardButtonType': (d) => KeyboardButtonType.fromJson(d),
  'keyboardButtonTypeText': (d) => KeyboardButtonTypeText.fromJson(d),
  'keyboardButtonTypeRequestPhoneNumber': (d) =>
      KeyboardButtonTypeRequestPhoneNumber.fromJson(d),
  'keyboardButtonTypeRequestLocation': (d) =>
      KeyboardButtonTypeRequestLocation.fromJson(d),
  'keyboardButtonTypeRequestPoll': (d) =>
      KeyboardButtonTypeRequestPoll.fromJson(d),
  'keyboardButton': (d) => KeyboardButton.fromJson(d),
  'inlineKeyboardButtonType': (d) => InlineKeyboardButtonType.fromJson(d),
  'inlineKeyboardButtonTypeUrl': (d) => InlineKeyboardButtonTypeUrl.fromJson(d),
  'inlineKeyboardButtonTypeLoginUrl': (d) =>
      InlineKeyboardButtonTypeLoginUrl.fromJson(d),
  'inlineKeyboardButtonTypeCallback': (d) =>
      InlineKeyboardButtonTypeCallback.fromJson(d),
  'inlineKeyboardButtonTypeCallbackWithPassword': (d) =>
      InlineKeyboardButtonTypeCallbackWithPassword.fromJson(d),
  'inlineKeyboardButtonTypeCallbackGame': (d) =>
      InlineKeyboardButtonTypeCallbackGame.fromJson(d),
  'inlineKeyboardButtonTypeSwitchInline': (d) =>
      InlineKeyboardButtonTypeSwitchInline.fromJson(d),
  'inlineKeyboardButtonTypeBuy': (d) => InlineKeyboardButtonTypeBuy.fromJson(d),
  'inlineKeyboardButton': (d) => InlineKeyboardButton.fromJson(d),
  'replyMarkup': (d) => ReplyMarkup.fromJson(d),
  'replyMarkupRemoveKeyboard': (d) => ReplyMarkupRemoveKeyboard.fromJson(d),
  'replyMarkupForceReply': (d) => ReplyMarkupForceReply.fromJson(d),
  'replyMarkupShowKeyboard': (d) => ReplyMarkupShowKeyboard.fromJson(d),
  'replyMarkupInlineKeyboard': (d) => ReplyMarkupInlineKeyboard.fromJson(d),
  'loginUrlInfo': (d) => LoginUrlInfo.fromJson(d),
  'loginUrlInfoOpen': (d) => LoginUrlInfoOpen.fromJson(d),
  'loginUrlInfoRequestConfirmation': (d) =>
      LoginUrlInfoRequestConfirmation.fromJson(d),
  'messageThreadInfo': (d) => MessageThreadInfo.fromJson(d),
  'richText': (d) => RichText.fromJson(d),
  'richTextPlain': (d) => RichTextPlain.fromJson(d),
  'richTextBold': (d) => RichTextBold.fromJson(d),
  'richTextItalic': (d) => RichTextItalic.fromJson(d),
  'richTextUnderline': (d) => RichTextUnderline.fromJson(d),
  'richTextStrikethrough': (d) => RichTextStrikethrough.fromJson(d),
  'richTextFixed': (d) => RichTextFixed.fromJson(d),
  'richTextUrl': (d) => RichTextUrl.fromJson(d),
  'richTextEmailAddress': (d) => RichTextEmailAddress.fromJson(d),
  'richTextSubscript': (d) => RichTextSubscript.fromJson(d),
  'richTextSuperscript': (d) => RichTextSuperscript.fromJson(d),
  'richTextMarked': (d) => RichTextMarked.fromJson(d),
  'richTextPhoneNumber': (d) => RichTextPhoneNumber.fromJson(d),
  'richTextIcon': (d) => RichTextIcon.fromJson(d),
  'richTextReference': (d) => RichTextReference.fromJson(d),
  'richTextAnchor': (d) => RichTextAnchor.fromJson(d),
  'richTextAnchorLink': (d) => RichTextAnchorLink.fromJson(d),
  'richTexts': (d) => RichTexts.fromJson(d),
  'pageBlockCaption': (d) => PageBlockCaption.fromJson(d),
  'pageBlockListItem': (d) => PageBlockListItem.fromJson(d),
  'pageBlockHorizontalAlignment': (d) =>
      PageBlockHorizontalAlignment.fromJson(d),
  'pageBlockHorizontalAlignmentLeft': (d) =>
      PageBlockHorizontalAlignmentLeft.fromJson(d),
  'pageBlockHorizontalAlignmentCenter': (d) =>
      PageBlockHorizontalAlignmentCenter.fromJson(d),
  'pageBlockHorizontalAlignmentRight': (d) =>
      PageBlockHorizontalAlignmentRight.fromJson(d),
  'pageBlockVerticalAlignment': (d) => PageBlockVerticalAlignment.fromJson(d),
  'pageBlockVerticalAlignmentTop': (d) =>
      PageBlockVerticalAlignmentTop.fromJson(d),
  'pageBlockVerticalAlignmentMiddle': (d) =>
      PageBlockVerticalAlignmentMiddle.fromJson(d),
  'pageBlockVerticalAlignmentBottom': (d) =>
      PageBlockVerticalAlignmentBottom.fromJson(d),
  'pageBlockTableCell': (d) => PageBlockTableCell.fromJson(d),
  'pageBlockRelatedArticle': (d) => PageBlockRelatedArticle.fromJson(d),
  'pageBlock': (d) => PageBlock.fromJson(d),
  'pageBlockTitle': (d) => PageBlockTitle.fromJson(d),
  'pageBlockSubtitle': (d) => PageBlockSubtitle.fromJson(d),
  'pageBlockAuthorDate': (d) => PageBlockAuthorDate.fromJson(d),
  'pageBlockHeader': (d) => PageBlockHeader.fromJson(d),
  'pageBlockSubheader': (d) => PageBlockSubheader.fromJson(d),
  'pageBlockKicker': (d) => PageBlockKicker.fromJson(d),
  'pageBlockParagraph': (d) => PageBlockParagraph.fromJson(d),
  'pageBlockPreformatted': (d) => PageBlockPreformatted.fromJson(d),
  'pageBlockFooter': (d) => PageBlockFooter.fromJson(d),
  'pageBlockDivider': (d) => PageBlockDivider.fromJson(d),
  'pageBlockAnchor': (d) => PageBlockAnchor.fromJson(d),
  'pageBlockList': (d) => PageBlockList.fromJson(d),
  'pageBlockBlockQuote': (d) => PageBlockBlockQuote.fromJson(d),
  'pageBlockPullQuote': (d) => PageBlockPullQuote.fromJson(d),
  'pageBlockAnimation': (d) => PageBlockAnimation.fromJson(d),
  'pageBlockAudio': (d) => PageBlockAudio.fromJson(d),
  'pageBlockPhoto': (d) => PageBlockPhoto.fromJson(d),
  'pageBlockVideo': (d) => PageBlockVideo.fromJson(d),
  'pageBlockVoiceNote': (d) => PageBlockVoiceNote.fromJson(d),
  'pageBlockCover': (d) => PageBlockCover.fromJson(d),
  'pageBlockEmbedded': (d) => PageBlockEmbedded.fromJson(d),
  'pageBlockEmbeddedPost': (d) => PageBlockEmbeddedPost.fromJson(d),
  'pageBlockCollage': (d) => PageBlockCollage.fromJson(d),
  'pageBlockSlideshow': (d) => PageBlockSlideshow.fromJson(d),
  'pageBlockChatLink': (d) => PageBlockChatLink.fromJson(d),
  'pageBlockTable': (d) => PageBlockTable.fromJson(d),
  'pageBlockDetails': (d) => PageBlockDetails.fromJson(d),
  'pageBlockRelatedArticles': (d) => PageBlockRelatedArticles.fromJson(d),
  'pageBlockMap': (d) => PageBlockMap.fromJson(d),
  'webPageInstantView': (d) => WebPageInstantView.fromJson(d),
  'webPage': (d) => WebPage.fromJson(d),
  'countryInfo': (d) => CountryInfo.fromJson(d),
  'countries': (d) => Countries.fromJson(d),
  'phoneNumberInfo': (d) => PhoneNumberInfo.fromJson(d),
  'bankCardActionOpenUrl': (d) => BankCardActionOpenUrl.fromJson(d),
  'bankCardInfo': (d) => BankCardInfo.fromJson(d),
  'address': (d) => Address.fromJson(d),
  'labeledPricePart': (d) => LabeledPricePart.fromJson(d),
  'invoice': (d) => Invoice.fromJson(d),
  'orderInfo': (d) => OrderInfo.fromJson(d),
  'shippingOption': (d) => ShippingOption.fromJson(d),
  'savedCredentials': (d) => SavedCredentials.fromJson(d),
  'inputCredentials': (d) => InputCredentials.fromJson(d),
  'inputCredentialsSaved': (d) => InputCredentialsSaved.fromJson(d),
  'inputCredentialsNew': (d) => InputCredentialsNew.fromJson(d),
  'inputCredentialsAndroidPay': (d) => InputCredentialsAndroidPay.fromJson(d),
  'inputCredentialsApplePay': (d) => InputCredentialsApplePay.fromJson(d),
  'paymentsProviderStripe': (d) => PaymentsProviderStripe.fromJson(d),
  'paymentForm': (d) => PaymentForm.fromJson(d),
  'validatedOrderInfo': (d) => ValidatedOrderInfo.fromJson(d),
  'paymentResult': (d) => PaymentResult.fromJson(d),
  'paymentReceipt': (d) => PaymentReceipt.fromJson(d),
  'datedFile': (d) => DatedFile.fromJson(d),
  'passportElementType': (d) => PassportElementType.fromJson(d),
  'passportElementTypePersonalDetails': (d) =>
      PassportElementTypePersonalDetails.fromJson(d),
  'passportElementTypePassport': (d) => PassportElementTypePassport.fromJson(d),
  'passportElementTypeDriverLicense': (d) =>
      PassportElementTypeDriverLicense.fromJson(d),
  'passportElementTypeIdentityCard': (d) =>
      PassportElementTypeIdentityCard.fromJson(d),
  'passportElementTypeInternalPassport': (d) =>
      PassportElementTypeInternalPassport.fromJson(d),
  'passportElementTypeAddress': (d) => PassportElementTypeAddress.fromJson(d),
  'passportElementTypeUtilityBill': (d) =>
      PassportElementTypeUtilityBill.fromJson(d),
  'passportElementTypeBankStatement': (d) =>
      PassportElementTypeBankStatement.fromJson(d),
  'passportElementTypeRentalAgreement': (d) =>
      PassportElementTypeRentalAgreement.fromJson(d),
  'passportElementTypePassportRegistration': (d) =>
      PassportElementTypePassportRegistration.fromJson(d),
  'passportElementTypeTemporaryRegistration': (d) =>
      PassportElementTypeTemporaryRegistration.fromJson(d),
  'passportElementTypePhoneNumber': (d) =>
      PassportElementTypePhoneNumber.fromJson(d),
  'passportElementTypeEmailAddress': (d) =>
      PassportElementTypeEmailAddress.fromJson(d),
  'date': (d) => Date.fromJson(d),
  'personalDetails': (d) => PersonalDetails.fromJson(d),
  'identityDocument': (d) => IdentityDocument.fromJson(d),
  'inputIdentityDocument': (d) => InputIdentityDocument.fromJson(d),
  'personalDocument': (d) => PersonalDocument.fromJson(d),
  'inputPersonalDocument': (d) => InputPersonalDocument.fromJson(d),
  'passportElement': (d) => PassportElement.fromJson(d),
  'passportElementPersonalDetails': (d) =>
      PassportElementPersonalDetails.fromJson(d),
  'passportElementPassport': (d) => PassportElementPassport.fromJson(d),
  'passportElementDriverLicense': (d) =>
      PassportElementDriverLicense.fromJson(d),
  'passportElementIdentityCard': (d) => PassportElementIdentityCard.fromJson(d),
  'passportElementInternalPassport': (d) =>
      PassportElementInternalPassport.fromJson(d),
  'passportElementAddress': (d) => PassportElementAddress.fromJson(d),
  'passportElementUtilityBill': (d) => PassportElementUtilityBill.fromJson(d),
  'passportElementBankStatement': (d) =>
      PassportElementBankStatement.fromJson(d),
  'passportElementRentalAgreement': (d) =>
      PassportElementRentalAgreement.fromJson(d),
  'passportElementPassportRegistration': (d) =>
      PassportElementPassportRegistration.fromJson(d),
  'passportElementTemporaryRegistration': (d) =>
      PassportElementTemporaryRegistration.fromJson(d),
  'passportElementPhoneNumber': (d) => PassportElementPhoneNumber.fromJson(d),
  'passportElementEmailAddress': (d) => PassportElementEmailAddress.fromJson(d),
  'inputPassportElement': (d) => InputPassportElement.fromJson(d),
  'inputPassportElementPersonalDetails': (d) =>
      InputPassportElementPersonalDetails.fromJson(d),
  'inputPassportElementPassport': (d) =>
      InputPassportElementPassport.fromJson(d),
  'inputPassportElementDriverLicense': (d) =>
      InputPassportElementDriverLicense.fromJson(d),
  'inputPassportElementIdentityCard': (d) =>
      InputPassportElementIdentityCard.fromJson(d),
  'inputPassportElementInternalPassport': (d) =>
      InputPassportElementInternalPassport.fromJson(d),
  'inputPassportElementAddress': (d) => InputPassportElementAddress.fromJson(d),
  'inputPassportElementUtilityBill': (d) =>
      InputPassportElementUtilityBill.fromJson(d),
  'inputPassportElementBankStatement': (d) =>
      InputPassportElementBankStatement.fromJson(d),
  'inputPassportElementRentalAgreement': (d) =>
      InputPassportElementRentalAgreement.fromJson(d),
  'inputPassportElementPassportRegistration': (d) =>
      InputPassportElementPassportRegistration.fromJson(d),
  'inputPassportElementTemporaryRegistration': (d) =>
      InputPassportElementTemporaryRegistration.fromJson(d),
  'inputPassportElementPhoneNumber': (d) =>
      InputPassportElementPhoneNumber.fromJson(d),
  'inputPassportElementEmailAddress': (d) =>
      InputPassportElementEmailAddress.fromJson(d),
  'passportElements': (d) => PassportElements.fromJson(d),
  'passportElementErrorSource': (d) => PassportElementErrorSource.fromJson(d),
  'passportElementErrorSourceUnspecified': (d) =>
      PassportElementErrorSourceUnspecified.fromJson(d),
  'passportElementErrorSourceDataField': (d) =>
      PassportElementErrorSourceDataField.fromJson(d),
  'passportElementErrorSourceFrontSide': (d) =>
      PassportElementErrorSourceFrontSide.fromJson(d),
  'passportElementErrorSourceReverseSide': (d) =>
      PassportElementErrorSourceReverseSide.fromJson(d),
  'passportElementErrorSourceSelfie': (d) =>
      PassportElementErrorSourceSelfie.fromJson(d),
  'passportElementErrorSourceTranslationFile': (d) =>
      PassportElementErrorSourceTranslationFile.fromJson(d),
  'passportElementErrorSourceTranslationFiles': (d) =>
      PassportElementErrorSourceTranslationFiles.fromJson(d),
  'passportElementErrorSourceFile': (d) =>
      PassportElementErrorSourceFile.fromJson(d),
  'passportElementErrorSourceFiles': (d) =>
      PassportElementErrorSourceFiles.fromJson(d),
  'passportElementError': (d) => PassportElementError.fromJson(d),
  'passportSuitableElement': (d) => PassportSuitableElement.fromJson(d),
  'passportRequiredElement': (d) => PassportRequiredElement.fromJson(d),
  'passportAuthorizationForm': (d) => PassportAuthorizationForm.fromJson(d),
  'passportElementsWithErrors': (d) => PassportElementsWithErrors.fromJson(d),
  'encryptedCredentials': (d) => EncryptedCredentials.fromJson(d),
  'encryptedPassportElement': (d) => EncryptedPassportElement.fromJson(d),
  'inputPassportElementErrorSource': (d) =>
      InputPassportElementErrorSource.fromJson(d),
  'inputPassportElementErrorSourceUnspecified': (d) =>
      InputPassportElementErrorSourceUnspecified.fromJson(d),
  'inputPassportElementErrorSourceDataField': (d) =>
      InputPassportElementErrorSourceDataField.fromJson(d),
  'inputPassportElementErrorSourceFrontSide': (d) =>
      InputPassportElementErrorSourceFrontSide.fromJson(d),
  'inputPassportElementErrorSourceReverseSide': (d) =>
      InputPassportElementErrorSourceReverseSide.fromJson(d),
  'inputPassportElementErrorSourceSelfie': (d) =>
      InputPassportElementErrorSourceSelfie.fromJson(d),
  'inputPassportElementErrorSourceTranslationFile': (d) =>
      InputPassportElementErrorSourceTranslationFile.fromJson(d),
  'inputPassportElementErrorSourceTranslationFiles': (d) =>
      InputPassportElementErrorSourceTranslationFiles.fromJson(d),
  'inputPassportElementErrorSourceFile': (d) =>
      InputPassportElementErrorSourceFile.fromJson(d),
  'inputPassportElementErrorSourceFiles': (d) =>
      InputPassportElementErrorSourceFiles.fromJson(d),
  'inputPassportElementError': (d) => InputPassportElementError.fromJson(d),
  'messageContent': (d) => MessageContent.fromJson(d),
  'messageText': (d) => MessageText.fromJson(d),
  'messageAnimation': (d) => MessageAnimation.fromJson(d),
  'messageAudio': (d) => MessageAudio.fromJson(d),
  'messageDocument': (d) => MessageDocument.fromJson(d),
  'messagePhoto': (d) => MessagePhoto.fromJson(d),
  'messageExpiredPhoto': (d) => MessageExpiredPhoto.fromJson(d),
  'messageSticker': (d) => MessageSticker.fromJson(d),
  'messageVideo': (d) => MessageVideo.fromJson(d),
  'messageExpiredVideo': (d) => MessageExpiredVideo.fromJson(d),
  'messageVideoNote': (d) => MessageVideoNote.fromJson(d),
  'messageVoiceNote': (d) => MessageVoiceNote.fromJson(d),
  'messageLocation': (d) => MessageLocation.fromJson(d),
  'messageVenue': (d) => MessageVenue.fromJson(d),
  'messageContact': (d) => MessageContact.fromJson(d),
  'messageDice': (d) => MessageDice.fromJson(d),
  'messageGame': (d) => MessageGame.fromJson(d),
  'messagePoll': (d) => MessagePoll.fromJson(d),
  'messageInvoice': (d) => MessageInvoice.fromJson(d),
  'messageCall': (d) => MessageCall.fromJson(d),
  'messageVoiceChatStarted': (d) => MessageVoiceChatStarted.fromJson(d),
  'messageVoiceChatEnded': (d) => MessageVoiceChatEnded.fromJson(d),
  'messageInviteVoiceChatParticipants': (d) =>
      MessageInviteVoiceChatParticipants.fromJson(d),
  'messageBasicGroupChatCreate': (d) => MessageBasicGroupChatCreate.fromJson(d),
  'messageSupergroupChatCreate': (d) => MessageSupergroupChatCreate.fromJson(d),
  'messageChatChangeTitle': (d) => MessageChatChangeTitle.fromJson(d),
  'messageChatChangePhoto': (d) => MessageChatChangePhoto.fromJson(d),
  'messageChatDeletePhoto': (d) => MessageChatDeletePhoto.fromJson(d),
  'messageChatAddMembers': (d) => MessageChatAddMembers.fromJson(d),
  'messageChatJoinByLink': (d) => MessageChatJoinByLink.fromJson(d),
  'messageChatDeleteMember': (d) => MessageChatDeleteMember.fromJson(d),
  'messageChatUpgradeTo': (d) => MessageChatUpgradeTo.fromJson(d),
  'messageChatUpgradeFrom': (d) => MessageChatUpgradeFrom.fromJson(d),
  'messagePinMessage': (d) => MessagePinMessage.fromJson(d),
  'messageScreenshotTaken': (d) => MessageScreenshotTaken.fromJson(d),
  'messageChatSetTtl': (d) => MessageChatSetTtl.fromJson(d),
  'messageCustomServiceAction': (d) => MessageCustomServiceAction.fromJson(d),
  'messageGameScore': (d) => MessageGameScore.fromJson(d),
  'messagePaymentSuccessful': (d) => MessagePaymentSuccessful.fromJson(d),
  'messagePaymentSuccessfulBot': (d) => MessagePaymentSuccessfulBot.fromJson(d),
  'messageContactRegistered': (d) => MessageContactRegistered.fromJson(d),
  'messageWebsiteConnected': (d) => MessageWebsiteConnected.fromJson(d),
  'messagePassportDataSent': (d) => MessagePassportDataSent.fromJson(d),
  'messagePassportDataReceived': (d) => MessagePassportDataReceived.fromJson(d),
  'messageProximityAlertTriggered': (d) =>
      MessageProximityAlertTriggered.fromJson(d),
  'messageUnsupported': (d) => MessageUnsupported.fromJson(d),
  'textEntityType': (d) => TextEntityType.fromJson(d),
  'textEntityTypeMention': (d) => TextEntityTypeMention.fromJson(d),
  'textEntityTypeHashtag': (d) => TextEntityTypeHashtag.fromJson(d),
  'textEntityTypeCashtag': (d) => TextEntityTypeCashtag.fromJson(d),
  'textEntityTypeBotCommand': (d) => TextEntityTypeBotCommand.fromJson(d),
  'textEntityTypeUrl': (d) => TextEntityTypeUrl.fromJson(d),
  'textEntityTypeEmailAddress': (d) => TextEntityTypeEmailAddress.fromJson(d),
  'textEntityTypePhoneNumber': (d) => TextEntityTypePhoneNumber.fromJson(d),
  'textEntityTypeBankCardNumber': (d) =>
      TextEntityTypeBankCardNumber.fromJson(d),
  'textEntityTypeBold': (d) => TextEntityTypeBold.fromJson(d),
  'textEntityTypeItalic': (d) => TextEntityTypeItalic.fromJson(d),
  'textEntityTypeUnderline': (d) => TextEntityTypeUnderline.fromJson(d),
  'textEntityTypeStrikethrough': (d) => TextEntityTypeStrikethrough.fromJson(d),
  'textEntityTypeCode': (d) => TextEntityTypeCode.fromJson(d),
  'textEntityTypePre': (d) => TextEntityTypePre.fromJson(d),
  'textEntityTypePreCode': (d) => TextEntityTypePreCode.fromJson(d),
  'textEntityTypeTextUrl': (d) => TextEntityTypeTextUrl.fromJson(d),
  'textEntityTypeMentionName': (d) => TextEntityTypeMentionName.fromJson(d),
  'inputThumbnail': (d) => InputThumbnail.fromJson(d),
  'messageSchedulingState': (d) => MessageSchedulingState.fromJson(d),
  'messageSchedulingStateSendAtDate': (d) =>
      MessageSchedulingStateSendAtDate.fromJson(d),
  'messageSchedulingStateSendWhenOnline': (d) =>
      MessageSchedulingStateSendWhenOnline.fromJson(d),
  'messageSendOptions': (d) => MessageSendOptions.fromJson(d),
  'messageCopyOptions': (d) => MessageCopyOptions.fromJson(d),
  'inputMessageContent': (d) => InputMessageContent.fromJson(d),
  'inputMessageText': (d) => InputMessageText.fromJson(d),
  'inputMessageAnimation': (d) => InputMessageAnimation.fromJson(d),
  'inputMessageAudio': (d) => InputMessageAudio.fromJson(d),
  'inputMessageDocument': (d) => InputMessageDocument.fromJson(d),
  'inputMessagePhoto': (d) => InputMessagePhoto.fromJson(d),
  'inputMessageSticker': (d) => InputMessageSticker.fromJson(d),
  'inputMessageVideo': (d) => InputMessageVideo.fromJson(d),
  'inputMessageVideoNote': (d) => InputMessageVideoNote.fromJson(d),
  'inputMessageVoiceNote': (d) => InputMessageVoiceNote.fromJson(d),
  'inputMessageLocation': (d) => InputMessageLocation.fromJson(d),
  'inputMessageVenue': (d) => InputMessageVenue.fromJson(d),
  'inputMessageContact': (d) => InputMessageContact.fromJson(d),
  'inputMessageDice': (d) => InputMessageDice.fromJson(d),
  'inputMessageGame': (d) => InputMessageGame.fromJson(d),
  'inputMessageInvoice': (d) => InputMessageInvoice.fromJson(d),
  'inputMessagePoll': (d) => InputMessagePoll.fromJson(d),
  'inputMessageForwarded': (d) => InputMessageForwarded.fromJson(d),
  'searchMessagesFilter': (d) => SearchMessagesFilter.fromJson(d),
  'searchMessagesFilterEmpty': (d) => SearchMessagesFilterEmpty.fromJson(d),
  'searchMessagesFilterAnimation': (d) =>
      SearchMessagesFilterAnimation.fromJson(d),
  'searchMessagesFilterAudio': (d) => SearchMessagesFilterAudio.fromJson(d),
  'searchMessagesFilterDocument': (d) =>
      SearchMessagesFilterDocument.fromJson(d),
  'searchMessagesFilterPhoto': (d) => SearchMessagesFilterPhoto.fromJson(d),
  'searchMessagesFilterVideo': (d) => SearchMessagesFilterVideo.fromJson(d),
  'searchMessagesFilterVoiceNote': (d) =>
      SearchMessagesFilterVoiceNote.fromJson(d),
  'searchMessagesFilterPhotoAndVideo': (d) =>
      SearchMessagesFilterPhotoAndVideo.fromJson(d),
  'searchMessagesFilterUrl': (d) => SearchMessagesFilterUrl.fromJson(d),
  'searchMessagesFilterChatPhoto': (d) =>
      SearchMessagesFilterChatPhoto.fromJson(d),
  'searchMessagesFilterCall': (d) => SearchMessagesFilterCall.fromJson(d),
  'searchMessagesFilterMissedCall': (d) =>
      SearchMessagesFilterMissedCall.fromJson(d),
  'searchMessagesFilterVideoNote': (d) =>
      SearchMessagesFilterVideoNote.fromJson(d),
  'searchMessagesFilterVoiceAndVideoNote': (d) =>
      SearchMessagesFilterVoiceAndVideoNote.fromJson(d),
  'searchMessagesFilterMention': (d) => SearchMessagesFilterMention.fromJson(d),
  'searchMessagesFilterUnreadMention': (d) =>
      SearchMessagesFilterUnreadMention.fromJson(d),
  'searchMessagesFilterFailedToSend': (d) =>
      SearchMessagesFilterFailedToSend.fromJson(d),
  'searchMessagesFilterPinned': (d) => SearchMessagesFilterPinned.fromJson(d),
  'chatAction': (d) => ChatAction.fromJson(d),
  'chatActionTyping': (d) => ChatActionTyping.fromJson(d),
  'chatActionRecordingVideo': (d) => ChatActionRecordingVideo.fromJson(d),
  'chatActionUploadingVideo': (d) => ChatActionUploadingVideo.fromJson(d),
  'chatActionRecordingVoiceNote': (d) =>
      ChatActionRecordingVoiceNote.fromJson(d),
  'chatActionUploadingVoiceNote': (d) =>
      ChatActionUploadingVoiceNote.fromJson(d),
  'chatActionUploadingPhoto': (d) => ChatActionUploadingPhoto.fromJson(d),
  'chatActionUploadingDocument': (d) => ChatActionUploadingDocument.fromJson(d),
  'chatActionChoosingLocation': (d) => ChatActionChoosingLocation.fromJson(d),
  'chatActionChoosingContact': (d) => ChatActionChoosingContact.fromJson(d),
  'chatActionStartPlayingGame': (d) => ChatActionStartPlayingGame.fromJson(d),
  'chatActionRecordingVideoNote': (d) =>
      ChatActionRecordingVideoNote.fromJson(d),
  'chatActionUploadingVideoNote': (d) =>
      ChatActionUploadingVideoNote.fromJson(d),
  'chatActionCancel': (d) => ChatActionCancel.fromJson(d),
  'userStatus': (d) => UserStatus.fromJson(d),
  'userStatusEmpty': (d) => UserStatusEmpty.fromJson(d),
  'userStatusOnline': (d) => UserStatusOnline.fromJson(d),
  'userStatusOffline': (d) => UserStatusOffline.fromJson(d),
  'userStatusRecently': (d) => UserStatusRecently.fromJson(d),
  'userStatusLastWeek': (d) => UserStatusLastWeek.fromJson(d),
  'userStatusLastMonth': (d) => UserStatusLastMonth.fromJson(d),
  'stickers': (d) => Stickers.fromJson(d),
  'emojis': (d) => Emojis.fromJson(d),
  'stickerSet': (d) => StickerSet.fromJson(d),
  'stickerSetInfo': (d) => StickerSetInfo.fromJson(d),
  'stickerSets': (d) => StickerSets.fromJson(d),
  'callDiscardReason': (d) => CallDiscardReason.fromJson(d),
  'callDiscardReasonEmpty': (d) => CallDiscardReasonEmpty.fromJson(d),
  'callDiscardReasonMissed': (d) => CallDiscardReasonMissed.fromJson(d),
  'callDiscardReasonDeclined': (d) => CallDiscardReasonDeclined.fromJson(d),
  'callDiscardReasonDisconnected': (d) =>
      CallDiscardReasonDisconnected.fromJson(d),
  'callDiscardReasonHungUp': (d) => CallDiscardReasonHungUp.fromJson(d),
  'callProtocol': (d) => CallProtocol.fromJson(d),
  'callServerType': (d) => CallServerType.fromJson(d),
  'callServerTypeTelegramReflector': (d) =>
      CallServerTypeTelegramReflector.fromJson(d),
  'callServerTypeWebrtc': (d) => CallServerTypeWebrtc.fromJson(d),
  'callServer': (d) => CallServer.fromJson(d),
  'callId': (d) => CallId.fromJson(d),
  'groupCallId': (d) => GroupCallId.fromJson(d),
  'callState': (d) => CallState.fromJson(d),
  'callStatePending': (d) => CallStatePending.fromJson(d),
  'callStateExchangingKeys': (d) => CallStateExchangingKeys.fromJson(d),
  'callStateReady': (d) => CallStateReady.fromJson(d),
  'callStateHangingUp': (d) => CallStateHangingUp.fromJson(d),
  'callStateDiscarded': (d) => CallStateDiscarded.fromJson(d),
  'callStateError': (d) => CallStateError.fromJson(d),
  'groupCallRecentSpeaker': (d) => GroupCallRecentSpeaker.fromJson(d),
  'groupCall': (d) => GroupCall.fromJson(d),
  'groupCallPayloadFingerprint': (d) => GroupCallPayloadFingerprint.fromJson(d),
  'groupCallPayload': (d) => GroupCallPayload.fromJson(d),
  'groupCallJoinResponseCandidate': (d) =>
      GroupCallJoinResponseCandidate.fromJson(d),
  'groupCallJoinResponse': (d) => GroupCallJoinResponse.fromJson(d),
  'groupCallParticipant': (d) => GroupCallParticipant.fromJson(d),
  'callProblem': (d) => CallProblem.fromJson(d),
  'callProblemEcho': (d) => CallProblemEcho.fromJson(d),
  'callProblemNoise': (d) => CallProblemNoise.fromJson(d),
  'callProblemInterruptions': (d) => CallProblemInterruptions.fromJson(d),
  'callProblemDistortedSpeech': (d) => CallProblemDistortedSpeech.fromJson(d),
  'callProblemSilentLocal': (d) => CallProblemSilentLocal.fromJson(d),
  'callProblemSilentRemote': (d) => CallProblemSilentRemote.fromJson(d),
  'callProblemDropped': (d) => CallProblemDropped.fromJson(d),
  'callProblemDistortedVideo': (d) => CallProblemDistortedVideo.fromJson(d),
  'callProblemPixelatedVideo': (d) => CallProblemPixelatedVideo.fromJson(d),
  'call': (d) => Call.fromJson(d),
  'phoneNumberAuthenticationSettings': (d) =>
      PhoneNumberAuthenticationSettings.fromJson(d),
  'animations': (d) => Animations.fromJson(d),
  'diceStickers': (d) => DiceStickers.fromJson(d),
  'diceStickersRegular': (d) => DiceStickersRegular.fromJson(d),
  'diceStickersSlotMachine': (d) => DiceStickersSlotMachine.fromJson(d),
  'importedContacts': (d) => ImportedContacts.fromJson(d),
  'httpUrl': (d) => HttpUrl.fromJson(d),
  'inputInlineQueryResult': (d) => InputInlineQueryResult.fromJson(d),
  'inputInlineQueryResultAnimation': (d) =>
      InputInlineQueryResultAnimation.fromJson(d),
  'inputInlineQueryResultArticle': (d) =>
      InputInlineQueryResultArticle.fromJson(d),
  'inputInlineQueryResultAudio': (d) => InputInlineQueryResultAudio.fromJson(d),
  'inputInlineQueryResultContact': (d) =>
      InputInlineQueryResultContact.fromJson(d),
  'inputInlineQueryResultDocument': (d) =>
      InputInlineQueryResultDocument.fromJson(d),
  'inputInlineQueryResultGame': (d) => InputInlineQueryResultGame.fromJson(d),
  'inputInlineQueryResultLocation': (d) =>
      InputInlineQueryResultLocation.fromJson(d),
  'inputInlineQueryResultPhoto': (d) => InputInlineQueryResultPhoto.fromJson(d),
  'inputInlineQueryResultSticker': (d) =>
      InputInlineQueryResultSticker.fromJson(d),
  'inputInlineQueryResultVenue': (d) => InputInlineQueryResultVenue.fromJson(d),
  'inputInlineQueryResultVideo': (d) => InputInlineQueryResultVideo.fromJson(d),
  'inputInlineQueryResultVoiceNote': (d) =>
      InputInlineQueryResultVoiceNote.fromJson(d),
  'inlineQueryResult': (d) => InlineQueryResult.fromJson(d),
  'inlineQueryResultArticle': (d) => InlineQueryResultArticle.fromJson(d),
  'inlineQueryResultContact': (d) => InlineQueryResultContact.fromJson(d),
  'inlineQueryResultLocation': (d) => InlineQueryResultLocation.fromJson(d),
  'inlineQueryResultVenue': (d) => InlineQueryResultVenue.fromJson(d),
  'inlineQueryResultGame': (d) => InlineQueryResultGame.fromJson(d),
  'inlineQueryResultAnimation': (d) => InlineQueryResultAnimation.fromJson(d),
  'inlineQueryResultAudio': (d) => InlineQueryResultAudio.fromJson(d),
  'inlineQueryResultDocument': (d) => InlineQueryResultDocument.fromJson(d),
  'inlineQueryResultPhoto': (d) => InlineQueryResultPhoto.fromJson(d),
  'inlineQueryResultSticker': (d) => InlineQueryResultSticker.fromJson(d),
  'inlineQueryResultVideo': (d) => InlineQueryResultVideo.fromJson(d),
  'inlineQueryResultVoiceNote': (d) => InlineQueryResultVoiceNote.fromJson(d),
  'inlineQueryResults': (d) => InlineQueryResults.fromJson(d),
  'callbackQueryPayload': (d) => CallbackQueryPayload.fromJson(d),
  'callbackQueryPayloadData': (d) => CallbackQueryPayloadData.fromJson(d),
  'callbackQueryPayloadDataWithPassword': (d) =>
      CallbackQueryPayloadDataWithPassword.fromJson(d),
  'callbackQueryPayloadGame': (d) => CallbackQueryPayloadGame.fromJson(d),
  'callbackQueryAnswer': (d) => CallbackQueryAnswer.fromJson(d),
  'customRequestResult': (d) => CustomRequestResult.fromJson(d),
  'gameHighScore': (d) => GameHighScore.fromJson(d),
  'gameHighScores': (d) => GameHighScores.fromJson(d),
  'chatEventAction': (d) => ChatEventAction.fromJson(d),
  'chatEventMessageEdited': (d) => ChatEventMessageEdited.fromJson(d),
  'chatEventMessageDeleted': (d) => ChatEventMessageDeleted.fromJson(d),
  'chatEventPollStopped': (d) => ChatEventPollStopped.fromJson(d),
  'chatEventMessagePinned': (d) => ChatEventMessagePinned.fromJson(d),
  'chatEventMessageUnpinned': (d) => ChatEventMessageUnpinned.fromJson(d),
  'chatEventMemberJoined': (d) => ChatEventMemberJoined.fromJson(d),
  'chatEventMemberLeft': (d) => ChatEventMemberLeft.fromJson(d),
  'chatEventMemberInvited': (d) => ChatEventMemberInvited.fromJson(d),
  'chatEventMemberPromoted': (d) => ChatEventMemberPromoted.fromJson(d),
  'chatEventMemberRestricted': (d) => ChatEventMemberRestricted.fromJson(d),
  'chatEventTitleChanged': (d) => ChatEventTitleChanged.fromJson(d),
  'chatEventPermissionsChanged': (d) => ChatEventPermissionsChanged.fromJson(d),
  'chatEventDescriptionChanged': (d) => ChatEventDescriptionChanged.fromJson(d),
  'chatEventUsernameChanged': (d) => ChatEventUsernameChanged.fromJson(d),
  'chatEventPhotoChanged': (d) => ChatEventPhotoChanged.fromJson(d),
  'chatEventInvitesToggled': (d) => ChatEventInvitesToggled.fromJson(d),
  'chatEventLinkedChatChanged': (d) => ChatEventLinkedChatChanged.fromJson(d),
  'chatEventSlowModeDelayChanged': (d) =>
      ChatEventSlowModeDelayChanged.fromJson(d),
  'chatEventSignMessagesToggled': (d) =>
      ChatEventSignMessagesToggled.fromJson(d),
  'chatEventStickerSetChanged': (d) => ChatEventStickerSetChanged.fromJson(d),
  'chatEventLocationChanged': (d) => ChatEventLocationChanged.fromJson(d),
  'chatEventIsAllHistoryAvailableToggled': (d) =>
      ChatEventIsAllHistoryAvailableToggled.fromJson(d),
  'chatEventVoiceChatCreated': (d) => ChatEventVoiceChatCreated.fromJson(d),
  'chatEventVoiceChatDiscarded': (d) => ChatEventVoiceChatDiscarded.fromJson(d),
  'chatEventVoiceChatParticipantIsMutedToggled': (d) =>
      ChatEventVoiceChatParticipantIsMutedToggled.fromJson(d),
  'chatEventVoiceChatMuteNewParticipantsToggled': (d) =>
      ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(d),
  'chatEvent': (d) => ChatEvent.fromJson(d),
  'chatEvents': (d) => ChatEvents.fromJson(d),
  'chatEventLogFilters': (d) => ChatEventLogFilters.fromJson(d),
  'languagePackStringValue': (d) => LanguagePackStringValue.fromJson(d),
  'languagePackStringValueOrdinary': (d) =>
      LanguagePackStringValueOrdinary.fromJson(d),
  'languagePackStringValuePluralized': (d) =>
      LanguagePackStringValuePluralized.fromJson(d),
  'languagePackStringValueDeleted': (d) =>
      LanguagePackStringValueDeleted.fromJson(d),
  'languagePackString': (d) => LanguagePackString.fromJson(d),
  'languagePackStrings': (d) => LanguagePackStrings.fromJson(d),
  'languagePackInfo': (d) => LanguagePackInfo.fromJson(d),
  'localizationTargetInfo': (d) => LocalizationTargetInfo.fromJson(d),
  'deviceToken': (d) => DeviceToken.fromJson(d),
  'deviceTokenFirebaseCloudMessaging': (d) =>
      DeviceTokenFirebaseCloudMessaging.fromJson(d),
  'deviceTokenApplePush': (d) => DeviceTokenApplePush.fromJson(d),
  'deviceTokenApplePushVoIP': (d) => DeviceTokenApplePushVoIP.fromJson(d),
  'deviceTokenWindowsPush': (d) => DeviceTokenWindowsPush.fromJson(d),
  'deviceTokenMicrosoftPush': (d) => DeviceTokenMicrosoftPush.fromJson(d),
  'deviceTokenMicrosoftPushVoIP': (d) =>
      DeviceTokenMicrosoftPushVoIP.fromJson(d),
  'deviceTokenWebPush': (d) => DeviceTokenWebPush.fromJson(d),
  'deviceTokenSimplePush': (d) => DeviceTokenSimplePush.fromJson(d),
  'deviceTokenUbuntuPush': (d) => DeviceTokenUbuntuPush.fromJson(d),
  'deviceTokenBlackBerryPush': (d) => DeviceTokenBlackBerryPush.fromJson(d),
  'deviceTokenTizenPush': (d) => DeviceTokenTizenPush.fromJson(d),
  'pushReceiverId': (d) => PushReceiverId.fromJson(d),
  'backgroundFill': (d) => BackgroundFill.fromJson(d),
  'backgroundFillSolid': (d) => BackgroundFillSolid.fromJson(d),
  'backgroundFillGradient': (d) => BackgroundFillGradient.fromJson(d),
  'backgroundType': (d) => BackgroundType.fromJson(d),
  'backgroundTypeWallpaper': (d) => BackgroundTypeWallpaper.fromJson(d),
  'backgroundTypePattern': (d) => BackgroundTypePattern.fromJson(d),
  'backgroundTypeFill': (d) => BackgroundTypeFill.fromJson(d),
  'background': (d) => Background.fromJson(d),
  'backgrounds': (d) => Backgrounds.fromJson(d),
  'inputBackground': (d) => InputBackground.fromJson(d),
  'inputBackgroundLocal': (d) => InputBackgroundLocal.fromJson(d),
  'inputBackgroundRemote': (d) => InputBackgroundRemote.fromJson(d),
  'hashtags': (d) => Hashtags.fromJson(d),
  'canTransferOwnershipResult': (d) => CanTransferOwnershipResult.fromJson(d),
  'canTransferOwnershipResultOk': (d) =>
      CanTransferOwnershipResultOk.fromJson(d),
  'canTransferOwnershipResultPasswordNeeded': (d) =>
      CanTransferOwnershipResultPasswordNeeded.fromJson(d),
  'canTransferOwnershipResultPasswordTooFresh': (d) =>
      CanTransferOwnershipResultPasswordTooFresh.fromJson(d),
  'canTransferOwnershipResultSessionTooFresh': (d) =>
      CanTransferOwnershipResultSessionTooFresh.fromJson(d),
  'checkChatUsernameResult': (d) => CheckChatUsernameResult.fromJson(d),
  'checkChatUsernameResultOk': (d) => CheckChatUsernameResultOk.fromJson(d),
  'checkChatUsernameResultUsernameInvalid': (d) =>
      CheckChatUsernameResultUsernameInvalid.fromJson(d),
  'checkChatUsernameResultUsernameOccupied': (d) =>
      CheckChatUsernameResultUsernameOccupied.fromJson(d),
  'checkChatUsernameResultPublicChatsTooMuch': (d) =>
      CheckChatUsernameResultPublicChatsTooMuch.fromJson(d),
  'checkChatUsernameResultPublicGroupsUnavailable': (d) =>
      CheckChatUsernameResultPublicGroupsUnavailable.fromJson(d),
  'pushMessageContent': (d) => PushMessageContent.fromJson(d),
  'pushMessageContentHidden': (d) => PushMessageContentHidden.fromJson(d),
  'pushMessageContentAnimation': (d) => PushMessageContentAnimation.fromJson(d),
  'pushMessageContentAudio': (d) => PushMessageContentAudio.fromJson(d),
  'pushMessageContentContact': (d) => PushMessageContentContact.fromJson(d),
  'pushMessageContentContactRegistered': (d) =>
      PushMessageContentContactRegistered.fromJson(d),
  'pushMessageContentDocument': (d) => PushMessageContentDocument.fromJson(d),
  'pushMessageContentGame': (d) => PushMessageContentGame.fromJson(d),
  'pushMessageContentGameScore': (d) => PushMessageContentGameScore.fromJson(d),
  'pushMessageContentInvoice': (d) => PushMessageContentInvoice.fromJson(d),
  'pushMessageContentLocation': (d) => PushMessageContentLocation.fromJson(d),
  'pushMessageContentPhoto': (d) => PushMessageContentPhoto.fromJson(d),
  'pushMessageContentPoll': (d) => PushMessageContentPoll.fromJson(d),
  'pushMessageContentScreenshotTaken': (d) =>
      PushMessageContentScreenshotTaken.fromJson(d),
  'pushMessageContentSticker': (d) => PushMessageContentSticker.fromJson(d),
  'pushMessageContentText': (d) => PushMessageContentText.fromJson(d),
  'pushMessageContentVideo': (d) => PushMessageContentVideo.fromJson(d),
  'pushMessageContentVideoNote': (d) => PushMessageContentVideoNote.fromJson(d),
  'pushMessageContentVoiceNote': (d) => PushMessageContentVoiceNote.fromJson(d),
  'pushMessageContentBasicGroupChatCreate': (d) =>
      PushMessageContentBasicGroupChatCreate.fromJson(d),
  'pushMessageContentChatAddMembers': (d) =>
      PushMessageContentChatAddMembers.fromJson(d),
  'pushMessageContentChatChangePhoto': (d) =>
      PushMessageContentChatChangePhoto.fromJson(d),
  'pushMessageContentChatChangeTitle': (d) =>
      PushMessageContentChatChangeTitle.fromJson(d),
  'pushMessageContentChatDeleteMember': (d) =>
      PushMessageContentChatDeleteMember.fromJson(d),
  'pushMessageContentChatJoinByLink': (d) =>
      PushMessageContentChatJoinByLink.fromJson(d),
  'pushMessageContentMessageForwards': (d) =>
      PushMessageContentMessageForwards.fromJson(d),
  'pushMessageContentMediaAlbum': (d) =>
      PushMessageContentMediaAlbum.fromJson(d),
  'notificationType': (d) => NotificationType.fromJson(d),
  'notificationTypeNewMessage': (d) => NotificationTypeNewMessage.fromJson(d),
  'notificationTypeNewSecretChat': (d) =>
      NotificationTypeNewSecretChat.fromJson(d),
  'notificationTypeNewCall': (d) => NotificationTypeNewCall.fromJson(d),
  'notificationTypeNewPushMessage': (d) =>
      NotificationTypeNewPushMessage.fromJson(d),
  'notificationGroupType': (d) => NotificationGroupType.fromJson(d),
  'notificationGroupTypeMessages': (d) =>
      NotificationGroupTypeMessages.fromJson(d),
  'notificationGroupTypeMentions': (d) =>
      NotificationGroupTypeMentions.fromJson(d),
  'notificationGroupTypeSecretChat': (d) =>
      NotificationGroupTypeSecretChat.fromJson(d),
  'notificationGroupTypeCalls': (d) => NotificationGroupTypeCalls.fromJson(d),
  'notification': (d) => Notification.fromJson(d),
  'notificationGroup': (d) => NotificationGroup.fromJson(d),
  'optionValue': (d) => OptionValue.fromJson(d),
  'optionValueBoolean': (d) => OptionValueBoolean.fromJson(d),
  'optionValueEmpty': (d) => OptionValueEmpty.fromJson(d),
  'optionValueInteger': (d) => OptionValueInteger.fromJson(d),
  'optionValueString': (d) => OptionValueString.fromJson(d),
  'jsonObjectMember': (d) => JsonObjectMember.fromJson(d),
  'jsonValue': (d) => JsonValue.fromJson(d),
  'jsonValueNull': (d) => JsonValueNull.fromJson(d),
  'jsonValueBoolean': (d) => JsonValueBoolean.fromJson(d),
  'jsonValueNumber': (d) => JsonValueNumber.fromJson(d),
  'jsonValueString': (d) => JsonValueString.fromJson(d),
  'jsonValueArray': (d) => JsonValueArray.fromJson(d),
  'jsonValueObject': (d) => JsonValueObject.fromJson(d),
  'userPrivacySettingRule': (d) => UserPrivacySettingRule.fromJson(d),
  'userPrivacySettingRuleAllowAll': (d) =>
      UserPrivacySettingRuleAllowAll.fromJson(d),
  'userPrivacySettingRuleAllowContacts': (d) =>
      UserPrivacySettingRuleAllowContacts.fromJson(d),
  'userPrivacySettingRuleAllowUsers': (d) =>
      UserPrivacySettingRuleAllowUsers.fromJson(d),
  'userPrivacySettingRuleAllowChatMembers': (d) =>
      UserPrivacySettingRuleAllowChatMembers.fromJson(d),
  'userPrivacySettingRuleRestrictAll': (d) =>
      UserPrivacySettingRuleRestrictAll.fromJson(d),
  'userPrivacySettingRuleRestrictContacts': (d) =>
      UserPrivacySettingRuleRestrictContacts.fromJson(d),
  'userPrivacySettingRuleRestrictUsers': (d) =>
      UserPrivacySettingRuleRestrictUsers.fromJson(d),
  'userPrivacySettingRuleRestrictChatMembers': (d) =>
      UserPrivacySettingRuleRestrictChatMembers.fromJson(d),
  'userPrivacySettingRules': (d) => UserPrivacySettingRules.fromJson(d),
  'userPrivacySetting': (d) => UserPrivacySetting.fromJson(d),
  'userPrivacySettingShowStatus': (d) =>
      UserPrivacySettingShowStatus.fromJson(d),
  'userPrivacySettingShowProfilePhoto': (d) =>
      UserPrivacySettingShowProfilePhoto.fromJson(d),
  'userPrivacySettingShowLinkInForwardedMessages': (d) =>
      UserPrivacySettingShowLinkInForwardedMessages.fromJson(d),
  'userPrivacySettingShowPhoneNumber': (d) =>
      UserPrivacySettingShowPhoneNumber.fromJson(d),
  'userPrivacySettingAllowChatInvites': (d) =>
      UserPrivacySettingAllowChatInvites.fromJson(d),
  'userPrivacySettingAllowCalls': (d) =>
      UserPrivacySettingAllowCalls.fromJson(d),
  'userPrivacySettingAllowPeerToPeerCalls': (d) =>
      UserPrivacySettingAllowPeerToPeerCalls.fromJson(d),
  'userPrivacySettingAllowFindingByPhoneNumber': (d) =>
      UserPrivacySettingAllowFindingByPhoneNumber.fromJson(d),
  'accountTtl': (d) => AccountTtl.fromJson(d),
  'session': (d) => Session.fromJson(d),
  'sessions': (d) => Sessions.fromJson(d),
  'connectedWebsite': (d) => ConnectedWebsite.fromJson(d),
  'connectedWebsites': (d) => ConnectedWebsites.fromJson(d),
  'chatReportReason': (d) => ChatReportReason.fromJson(d),
  'chatReportReasonSpam': (d) => ChatReportReasonSpam.fromJson(d),
  'chatReportReasonViolence': (d) => ChatReportReasonViolence.fromJson(d),
  'chatReportReasonPornography': (d) => ChatReportReasonPornography.fromJson(d),
  'chatReportReasonChildAbuse': (d) => ChatReportReasonChildAbuse.fromJson(d),
  'chatReportReasonCopyright': (d) => ChatReportReasonCopyright.fromJson(d),
  'chatReportReasonUnrelatedLocation': (d) =>
      ChatReportReasonUnrelatedLocation.fromJson(d),
  'chatReportReasonCustom': (d) => ChatReportReasonCustom.fromJson(d),
  'messageLink': (d) => MessageLink.fromJson(d),
  'messageLinkInfo': (d) => MessageLinkInfo.fromJson(d),
  'filePart': (d) => FilePart.fromJson(d),
  'fileType': (d) => FileType.fromJson(d),
  'fileTypeNone': (d) => FileTypeNone.fromJson(d),
  'fileTypeAnimation': (d) => FileTypeAnimation.fromJson(d),
  'fileTypeAudio': (d) => FileTypeAudio.fromJson(d),
  'fileTypeDocument': (d) => FileTypeDocument.fromJson(d),
  'fileTypePhoto': (d) => FileTypePhoto.fromJson(d),
  'fileTypeProfilePhoto': (d) => FileTypeProfilePhoto.fromJson(d),
  'fileTypeSecret': (d) => FileTypeSecret.fromJson(d),
  'fileTypeSecretThumbnail': (d) => FileTypeSecretThumbnail.fromJson(d),
  'fileTypeSecure': (d) => FileTypeSecure.fromJson(d),
  'fileTypeSticker': (d) => FileTypeSticker.fromJson(d),
  'fileTypeThumbnail': (d) => FileTypeThumbnail.fromJson(d),
  'fileTypeUnknown': (d) => FileTypeUnknown.fromJson(d),
  'fileTypeVideo': (d) => FileTypeVideo.fromJson(d),
  'fileTypeVideoNote': (d) => FileTypeVideoNote.fromJson(d),
  'fileTypeVoiceNote': (d) => FileTypeVoiceNote.fromJson(d),
  'fileTypeWallpaper': (d) => FileTypeWallpaper.fromJson(d),
  'storageStatisticsByFileType': (d) => StorageStatisticsByFileType.fromJson(d),
  'storageStatisticsByChat': (d) => StorageStatisticsByChat.fromJson(d),
  'storageStatistics': (d) => StorageStatistics.fromJson(d),
  'storageStatisticsFast': (d) => StorageStatisticsFast.fromJson(d),
  'databaseStatistics': (d) => DatabaseStatistics.fromJson(d),
  'networkType': (d) => NetworkType.fromJson(d),
  'networkTypeNone': (d) => NetworkTypeNone.fromJson(d),
  'networkTypeMobile': (d) => NetworkTypeMobile.fromJson(d),
  'networkTypeMobileRoaming': (d) => NetworkTypeMobileRoaming.fromJson(d),
  'networkTypeWiFi': (d) => NetworkTypeWiFi.fromJson(d),
  'networkTypeOther': (d) => NetworkTypeOther.fromJson(d),
  'networkStatisticsEntry': (d) => NetworkStatisticsEntry.fromJson(d),
  'networkStatisticsEntryFile': (d) => NetworkStatisticsEntryFile.fromJson(d),
  'networkStatisticsEntryCall': (d) => NetworkStatisticsEntryCall.fromJson(d),
  'networkStatistics': (d) => NetworkStatistics.fromJson(d),
  'autoDownloadSettings': (d) => AutoDownloadSettings.fromJson(d),
  'autoDownloadSettingsPresets': (d) => AutoDownloadSettingsPresets.fromJson(d),
  'connectionState': (d) => ConnectionState.fromJson(d),
  'connectionStateWaitingForNetwork': (d) =>
      ConnectionStateWaitingForNetwork.fromJson(d),
  'connectionStateConnectingToProxy': (d) =>
      ConnectionStateConnectingToProxy.fromJson(d),
  'connectionStateConnecting': (d) => ConnectionStateConnecting.fromJson(d),
  'connectionStateUpdating': (d) => ConnectionStateUpdating.fromJson(d),
  'connectionStateReady': (d) => ConnectionStateReady.fromJson(d),
  'topChatCategory': (d) => TopChatCategory.fromJson(d),
  'topChatCategoryUsers': (d) => TopChatCategoryUsers.fromJson(d),
  'topChatCategoryBots': (d) => TopChatCategoryBots.fromJson(d),
  'topChatCategoryGroups': (d) => TopChatCategoryGroups.fromJson(d),
  'topChatCategoryChannels': (d) => TopChatCategoryChannels.fromJson(d),
  'topChatCategoryInlineBots': (d) => TopChatCategoryInlineBots.fromJson(d),
  'topChatCategoryCalls': (d) => TopChatCategoryCalls.fromJson(d),
  'topChatCategoryForwardChats': (d) => TopChatCategoryForwardChats.fromJson(d),
  'tMeUrlType': (d) => TMeUrlType.fromJson(d),
  'tMeUrlTypeUser': (d) => TMeUrlTypeUser.fromJson(d),
  'tMeUrlTypeSupergroup': (d) => TMeUrlTypeSupergroup.fromJson(d),
  'tMeUrlTypeChatInvite': (d) => TMeUrlTypeChatInvite.fromJson(d),
  'tMeUrlTypeStickerSet': (d) => TMeUrlTypeStickerSet.fromJson(d),
  'tMeUrl': (d) => TMeUrl.fromJson(d),
  'tMeUrls': (d) => TMeUrls.fromJson(d),
  'suggestedAction': (d) => SuggestedAction.fromJson(d),
  'suggestedActionEnableArchiveAndMuteNewChats': (d) =>
      SuggestedActionEnableArchiveAndMuteNewChats.fromJson(d),
  'suggestedActionCheckPhoneNumber': (d) =>
      SuggestedActionCheckPhoneNumber.fromJson(d),
  'count': (d) => Count.fromJson(d),
  'text': (d) => Text.fromJson(d),
  'seconds': (d) => Seconds.fromJson(d),
  'deepLinkInfo': (d) => DeepLinkInfo.fromJson(d),
  'textParseMode': (d) => TextParseMode.fromJson(d),
  'textParseModeMarkdown': (d) => TextParseModeMarkdown.fromJson(d),
  'textParseModeHTML': (d) => TextParseModeHTML.fromJson(d),
  'proxyType': (d) => ProxyType.fromJson(d),
  'proxyTypeSocks5': (d) => ProxyTypeSocks5.fromJson(d),
  'proxyTypeHttp': (d) => ProxyTypeHttp.fromJson(d),
  'proxyTypeMtproto': (d) => ProxyTypeMtproto.fromJson(d),
  'proxy': (d) => Proxy.fromJson(d),
  'proxies': (d) => Proxies.fromJson(d),
  'inputSticker': (d) => InputSticker.fromJson(d),
  'inputStickerStatic': (d) => InputStickerStatic.fromJson(d),
  'inputStickerAnimated': (d) => InputStickerAnimated.fromJson(d),
  'dateRange': (d) => DateRange.fromJson(d),
  'statisticalValue': (d) => StatisticalValue.fromJson(d),
  'statisticalGraph': (d) => StatisticalGraph.fromJson(d),
  'statisticalGraphData': (d) => StatisticalGraphData.fromJson(d),
  'statisticalGraphAsync': (d) => StatisticalGraphAsync.fromJson(d),
  'statisticalGraphError': (d) => StatisticalGraphError.fromJson(d),
  'chatStatisticsMessageInteractionInfo': (d) =>
      ChatStatisticsMessageInteractionInfo.fromJson(d),
  'chatStatisticsMessageSenderInfo': (d) =>
      ChatStatisticsMessageSenderInfo.fromJson(d),
  'chatStatisticsAdministratorActionsInfo': (d) =>
      ChatStatisticsAdministratorActionsInfo.fromJson(d),
  'chatStatisticsInviterInfo': (d) => ChatStatisticsInviterInfo.fromJson(d),
  'chatStatistics': (d) => ChatStatistics.fromJson(d),
  'chatStatisticsSupergroup': (d) => ChatStatisticsSupergroup.fromJson(d),
  'chatStatisticsChannel': (d) => ChatStatisticsChannel.fromJson(d),
  'messageStatistics': (d) => MessageStatistics.fromJson(d),
  'point': (d) => Point.fromJson(d),
  'vectorPathCommand': (d) => VectorPathCommand.fromJson(d),
  'vectorPathCommandLine': (d) => VectorPathCommandLine.fromJson(d),
  'vectorPathCommandCubicBezierCurve': (d) =>
      VectorPathCommandCubicBezierCurve.fromJson(d),
  'update': (d) => Update.fromJson(d),
  'updateAuthorizationState': (d) => UpdateAuthorizationState.fromJson(d),
  'updateNewMessage': (d) => UpdateNewMessage.fromJson(d),
  'updateMessageSendAcknowledged': (d) =>
      UpdateMessageSendAcknowledged.fromJson(d),
  'updateMessageSendSucceeded': (d) => UpdateMessageSendSucceeded.fromJson(d),
  'updateMessageSendFailed': (d) => UpdateMessageSendFailed.fromJson(d),
  'updateMessageContent': (d) => UpdateMessageContent.fromJson(d),
  'updateMessageEdited': (d) => UpdateMessageEdited.fromJson(d),
  'updateMessageIsPinned': (d) => UpdateMessageIsPinned.fromJson(d),
  'updateMessageInteractionInfo': (d) =>
      UpdateMessageInteractionInfo.fromJson(d),
  'updateMessageContentOpened': (d) => UpdateMessageContentOpened.fromJson(d),
  'updateMessageMentionRead': (d) => UpdateMessageMentionRead.fromJson(d),
  'updateMessageLiveLocationViewed': (d) =>
      UpdateMessageLiveLocationViewed.fromJson(d),
  'updateNewChat': (d) => UpdateNewChat.fromJson(d),
  'updateChatTitle': (d) => UpdateChatTitle.fromJson(d),
  'updateChatPhoto': (d) => UpdateChatPhoto.fromJson(d),
  'updateChatPermissions': (d) => UpdateChatPermissions.fromJson(d),
  'updateChatLastMessage': (d) => UpdateChatLastMessage.fromJson(d),
  'updateChatPosition': (d) => UpdateChatPosition.fromJson(d),
  'updateChatIsMarkedAsUnread': (d) => UpdateChatIsMarkedAsUnread.fromJson(d),
  'updateChatIsBlocked': (d) => UpdateChatIsBlocked.fromJson(d),
  'updateChatHasScheduledMessages': (d) =>
      UpdateChatHasScheduledMessages.fromJson(d),
  'updateChatVoiceChat': (d) => UpdateChatVoiceChat.fromJson(d),
  'updateChatDefaultDisableNotification': (d) =>
      UpdateChatDefaultDisableNotification.fromJson(d),
  'updateChatReadInbox': (d) => UpdateChatReadInbox.fromJson(d),
  'updateChatReadOutbox': (d) => UpdateChatReadOutbox.fromJson(d),
  'updateChatUnreadMentionCount': (d) =>
      UpdateChatUnreadMentionCount.fromJson(d),
  'updateChatNotificationSettings': (d) =>
      UpdateChatNotificationSettings.fromJson(d),
  'updateScopeNotificationSettings': (d) =>
      UpdateScopeNotificationSettings.fromJson(d),
  'updateChatActionBar': (d) => UpdateChatActionBar.fromJson(d),
  'updateChatReplyMarkup': (d) => UpdateChatReplyMarkup.fromJson(d),
  'updateChatDraftMessage': (d) => UpdateChatDraftMessage.fromJson(d),
  'updateChatFilters': (d) => UpdateChatFilters.fromJson(d),
  'updateChatOnlineMemberCount': (d) => UpdateChatOnlineMemberCount.fromJson(d),
  'updateNotification': (d) => UpdateNotification.fromJson(d),
  'updateNotificationGroup': (d) => UpdateNotificationGroup.fromJson(d),
  'updateActiveNotifications': (d) => UpdateActiveNotifications.fromJson(d),
  'updateHavePendingNotifications': (d) =>
      UpdateHavePendingNotifications.fromJson(d),
  'updateDeleteMessages': (d) => UpdateDeleteMessages.fromJson(d),
  'updateUserChatAction': (d) => UpdateUserChatAction.fromJson(d),
  'updateUserStatus': (d) => UpdateUserStatus.fromJson(d),
  'updateUser': (d) => UpdateUser.fromJson(d),
  'updateBasicGroup': (d) => UpdateBasicGroup.fromJson(d),
  'updateSupergroup': (d) => UpdateSupergroup.fromJson(d),
  'updateSecretChat': (d) => UpdateSecretChat.fromJson(d),
  'updateUserFullInfo': (d) => UpdateUserFullInfo.fromJson(d),
  'updateBasicGroupFullInfo': (d) => UpdateBasicGroupFullInfo.fromJson(d),
  'updateSupergroupFullInfo': (d) => UpdateSupergroupFullInfo.fromJson(d),
  'updateServiceNotification': (d) => UpdateServiceNotification.fromJson(d),
  'updateFile': (d) => UpdateFile.fromJson(d),
  'updateFileGenerationStart': (d) => UpdateFileGenerationStart.fromJson(d),
  'updateFileGenerationStop': (d) => UpdateFileGenerationStop.fromJson(d),
  'updateCall': (d) => UpdateCall.fromJson(d),
  'updateGroupCall': (d) => UpdateGroupCall.fromJson(d),
  'updateGroupCallParticipant': (d) => UpdateGroupCallParticipant.fromJson(d),
  'updateNewCallSignalingData': (d) => UpdateNewCallSignalingData.fromJson(d),
  'updateUserPrivacySettingRules': (d) =>
      UpdateUserPrivacySettingRules.fromJson(d),
  'updateUnreadMessageCount': (d) => UpdateUnreadMessageCount.fromJson(d),
  'updateUnreadChatCount': (d) => UpdateUnreadChatCount.fromJson(d),
  'updateOption': (d) => UpdateOption.fromJson(d),
  'updateStickerSet': (d) => UpdateStickerSet.fromJson(d),
  'updateInstalledStickerSets': (d) => UpdateInstalledStickerSets.fromJson(d),
  'updateTrendingStickerSets': (d) => UpdateTrendingStickerSets.fromJson(d),
  'updateRecentStickers': (d) => UpdateRecentStickers.fromJson(d),
  'updateFavoriteStickers': (d) => UpdateFavoriteStickers.fromJson(d),
  'updateSavedAnimations': (d) => UpdateSavedAnimations.fromJson(d),
  'updateSelectedBackground': (d) => UpdateSelectedBackground.fromJson(d),
  'updateLanguagePackStrings': (d) => UpdateLanguagePackStrings.fromJson(d),
  'updateConnectionState': (d) => UpdateConnectionState.fromJson(d),
  'updateTermsOfService': (d) => UpdateTermsOfService.fromJson(d),
  'updateUsersNearby': (d) => UpdateUsersNearby.fromJson(d),
  'updateDiceEmojis': (d) => UpdateDiceEmojis.fromJson(d),
  'updateAnimationSearchParameters': (d) =>
      UpdateAnimationSearchParameters.fromJson(d),
  'updateSuggestedActions': (d) => UpdateSuggestedActions.fromJson(d),
  'updateNewInlineQuery': (d) => UpdateNewInlineQuery.fromJson(d),
  'updateNewChosenInlineResult': (d) => UpdateNewChosenInlineResult.fromJson(d),
  'updateNewCallbackQuery': (d) => UpdateNewCallbackQuery.fromJson(d),
  'updateNewInlineCallbackQuery': (d) =>
      UpdateNewInlineCallbackQuery.fromJson(d),
  'updateNewShippingQuery': (d) => UpdateNewShippingQuery.fromJson(d),
  'updateNewPreCheckoutQuery': (d) => UpdateNewPreCheckoutQuery.fromJson(d),
  'updateNewCustomEvent': (d) => UpdateNewCustomEvent.fromJson(d),
  'updateNewCustomQuery': (d) => UpdateNewCustomQuery.fromJson(d),
  'updatePoll': (d) => UpdatePoll.fromJson(d),
  'updatePollAnswer': (d) => UpdatePollAnswer.fromJson(d),
  'updates': (d) => Updates.fromJson(d),
  'logStream': (d) => LogStream.fromJson(d),
  'logStreamDefault': (d) => LogStreamDefault.fromJson(d),
  'logStreamFile': (d) => LogStreamFile.fromJson(d),
  'logStreamEmpty': (d) => LogStreamEmpty.fromJson(d),
  'logVerbosityLevel': (d) => LogVerbosityLevel.fromJson(d),
  'logTags': (d) => LogTags.fromJson(d),
  'testInt': (d) => TestInt.fromJson(d),
  'testString': (d) => TestString.fromJson(d),
  'testBytes': (d) => TestBytes.fromJson(d),
  'testVectorInt': (d) => TestVectorInt.fromJson(d),
  'testVectorIntObject': (d) => TestVectorIntObject.fromJson(d),
  'testVectorString': (d) => TestVectorString.fromJson(d),
  'testVectorStringObject': (d) => TestVectorStringObject.fromJson(d),
};
