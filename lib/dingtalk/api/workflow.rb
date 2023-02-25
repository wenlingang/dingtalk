module Dingtalk
  module Api
    module Workflow
      def terminate(payload = {})
        # https://open.dingtalk.com/document/orgapp/revoke-an-approval-instance
        post '/v1.0/workflow/processInstances/terminate', payload
      end

      def execute(payload = {})
        # https://open.dingtalk.com/document/orgapp/approve-or-reject-the-approval-task
        post '/v1.0/workflow/processInstances/execute', payload
      end

      def comments(payload = {})
        # https://open.dingtalk.com/document/orgapp/add-an-approval-comment-pop
        post '/v1.0/workflow/processInstances/comments', payload
      end

      def ids_query(payload = {})
        # https://open.dingtalk.com/document/orgapp/obtain-an-approval-list-of-instance-ids
        post '/v1.0/workflow/processes/instanceIds/query', payload
      end

      def get_process_instances(process_instance_id)
        # https://open.dingtalk.com/document/isvapp/obtains-the-details-of-a-single-approval-instance-pop
        get '/v1.0/workflow/processInstances', params: { processInstanceId: process_instance_id }
      end

      def managements_templates(userid)
        # https://open.dingtalk.com/document/orgapp/get-all-manageable-forms-for-the-current-enterprise
        get '/v1.0/workflow/processes/managements/templates', params: { userId: userid }
      end

      def todo_tasks_numbers(userid)
        # https://open.dingtalk.com/document/orgapp/create-an-approval-form-template
        get '/v1.0/workflow/processes/todoTasks/numbers', params: { userId: userid }
      end

      def redirect(payload = {})
        # https://open.dingtalk.com/document/isvapp/transfer-the-oa-approval-task-1
        post '/v1.0/workflow/tasks/redirect', payload
      end

      def forms(payload = {})
        # https://open.dingtalk.com/document/orgapp/create-an-approval-form-template
        post '/v1.0/workflow/forms', payload
      end

      def create(payload = {})
        # https://open.dingtalk.com/document/orgapp/create-an-approval-instance
        post '/v1.0/workflow/processInstances', payload
      end

      def forms_schemas_process_codes(process_code)
        # https://open.dingtalk.com/document/isvapp/obtain-the-form-schema
        get '/v1.0/workflow/forms/schemas/processCodes', params: { processCode: process_code }
      end

      def tasks_cancel(payload = {})
        # https://open.dingtalk.com/document/isvapp/batch-cancel-oa-approval-to-do-tasks
        post '/v1.0/workflow/processCentres/tasks/cancel', payload
      end

      def process_centres_todo_tasks(user_id, page_size, page_number, create_before)
        # https://open.dingtalk.com/document/isvapp/query-oa-approval-tasks-integrated-through-process-center
        get '/v1.0/workflow/processCentres/todoTasks', params: { userId: user_id, pageSize: page_size, pageNumber: page_number, createBefore: create_before }
      end

      def process_centres_tasks(payload = {})
        # https://open.dingtalk.com/document/orgapp/create-pending-tasks-in-process-center
        post '/v1.0/workflow/processCentres/tasks', payload
      end

      def process_centres_instances(payload = {})
        # https://open.dingtalk.com/document/isvapp/update-the-oa-approval-instance-status
        put '/v1.0/workflow/processCentres/instances', payload
      end

      def create_process_centres_instances(payload = {})
        # https://open.dingtalk.com/document/isvapp/create-a-ticket-approval-instance
        post '/v1.0/workflow/processCentres/instances', payload
      end

      def process_centres_schema_names_process_codes(name)
        # https://open.dingtalk.com/document/isvapp/query-oa-approval-tasks-integrated-through-process-center
        get '/v1.0/workflow/processCentres/schemaNames/processCodes', params: { name: name }
      end

      def create_process_centres_schemas
        # https://open.dingtalk.com/document/isvapp/create-or-update-approval-templates-new
        post '/v1.0/workflow/processCentres/schemas', payload
      end
    end
  end
end
