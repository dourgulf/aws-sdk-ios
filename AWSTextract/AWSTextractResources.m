//
// Copyright 2010-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "AWSTextractResources.h"
#import <AWSCore/AWSCocoaLumberjack.h>

@interface AWSTextractResources ()

@property (nonatomic, strong) NSDictionary *definitionDictionary;

@end

@implementation AWSTextractResources

+ (instancetype)sharedInstance {
    static AWSTextractResources *_sharedResources = nil;
    static dispatch_once_t once_token;

    dispatch_once(&once_token, ^{
        _sharedResources = [AWSTextractResources new];
    });

    return _sharedResources;
}

- (NSDictionary *)JSONObject {
    return self.definitionDictionary;
}

- (instancetype)init {
    if (self = [super init]) {
        //init method
        NSError *error = nil;
        _definitionDictionary = [NSJSONSerialization JSONObjectWithData:[[self definitionString] dataUsingEncoding:NSUTF8StringEncoding]
                                                                options:kNilOptions
                                                                  error:&error];
        if (_definitionDictionary == nil) {
            if (error) {
                AWSDDLogError(@"Failed to parse JSON service definition: %@",error);
            }
        }
    }
    return self;
}

- (NSString *)definitionString {
    return @"{\
  \"version\":\"2.0\",\
  \"metadata\":{\
    \"apiVersion\":\"2018-06-27\",\
    \"endpointPrefix\":\"textract\",\
    \"jsonVersion\":\"1.1\",\
    \"protocol\":\"json\",\
    \"serviceFullName\":\"Amazon Textract\",\
    \"serviceId\":\"Textract\",\
    \"signatureVersion\":\"v4\",\
    \"targetPrefix\":\"Textract\",\
    \"uid\":\"textract-2018-06-27\"\
  },\
  \"operations\":{\
    \"AnalyzeDocument\":{\
      \"name\":\"AnalyzeDocument\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AnalyzeDocumentRequest\"},\
      \"output\":{\"shape\":\"AnalyzeDocumentResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"HumanLoopQuotaExceededException\"}\
      ],\
      \"documentation\":\"<p>Analyzes an input document for relationships between detected items. </p> <p>The types of information returned are as follows: </p> <ul> <li> <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY <code>Block</code> object and a VALUE <code>Block</code> object. For example, <i>Name: Ana Silva Carolina</i> contains a key and value. <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is the value.</p> </li> <li> <p>Table and table cell data. A TABLE <code>Block</code> object contains information about a detected table. A CELL <code>Block</code> object is returned for each cell in a table.</p> </li> <li> <p>Lines and words of text. A LINE <code>Block</code> object contains one or more WORD <code>Block</code> objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of <code>FeatureTypes</code>). </p> </li> </ul> <p>Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT <code>Block</code> object contains information about a selection element, including the selection status.</p> <p>You can choose which type of analysis to perform by specifying the <code>FeatureTypes</code> list. </p> <p>The output is returned in a list of <code>Block</code> objects.</p> <p> <code>AnalyzeDocument</code> is a synchronous operation. To analyze documents asynchronously, use <a>StartDocumentAnalysis</a>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html\\\">Document Text Analysis</a>.</p>\"\
    },\
    \"AnalyzeExpense\":{\
      \"name\":\"AnalyzeExpense\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AnalyzeExpenseRequest\"},\
      \"output\":{\"shape\":\"AnalyzeExpenseResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"}\
      ],\
      \"documentation\":\"<p> <code>AnalyzeExpense</code> synchronously analyzes an input document for financially related relationships between text.</p> <p>Information is returned as <code>ExpenseDocuments</code> and seperated as follows.</p> <ul> <li> <p> <code>LineItemGroups</code>- A data set containing <code>LineItems</code> which store information about the lines of text, such as an item purchased and its price on a receipt.</p> </li> <li> <p> <code>SummaryFields</code>- Contains all other information a receipt, such as header information or the vendors name.</p> </li> </ul>\"\
    },\
    \"AnalyzeID\":{\
      \"name\":\"AnalyzeID\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AnalyzeIDRequest\"},\
      \"output\":{\"shape\":\"AnalyzeIDResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"}\
      ],\
      \"documentation\":\"<p>Analyzes identity documents for relevant information. This information is extracted and returned as <code>IdentityDocumentFields</code>, which records both the normalized field and value of the extracted text.</p>\"\
    },\
    \"DetectDocumentText\":{\
      \"name\":\"DetectDocumentText\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DetectDocumentTextRequest\"},\
      \"output\":{\"shape\":\"DetectDocumentTextResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"}\
      ],\
      \"documentation\":\"<p>Detects text in the input document. Amazon Textract can detect lines of text and the words that make up a line of text. The input document must be an image in JPEG or PNG format. <code>DetectDocumentText</code> returns the detected text in an array of <a>Block</a> objects. </p> <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p> <p> <code>DetectDocumentText</code> is a synchronous operation. To analyze documents asynchronously, use <a>StartDocumentTextDetection</a>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html\\\">Document Text Detection</a>.</p>\"\
    },\
    \"GetDocumentAnalysis\":{\
      \"name\":\"GetDocumentAnalysis\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetDocumentAnalysisRequest\"},\
      \"output\":{\"shape\":\"GetDocumentAnalysisResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InvalidJobIdException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"}\
      ],\
      \"documentation\":\"<p>Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document.</p> <p>You start asynchronous text analysis by calling <a>StartDocumentAnalysis</a>, which returns a job identifier (<code>JobId</code>). When the text analysis operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to <code>StartDocumentAnalysis</code>. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetDocumentAnalysis</code>, and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartDocumentAnalysis</code>.</p> <p> <code>GetDocumentAnalysis</code> returns an array of <a>Block</a> objects. The following types of information are returned: </p> <ul> <li> <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY <code>Block</code> object and a VALUE <code>Block</code> object. For example, <i>Name: Ana Silva Carolina</i> contains a key and value. <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is the value.</p> </li> <li> <p>Table and table cell data. A TABLE <code>Block</code> object contains information about a detected table. A CELL <code>Block</code> object is returned for each cell in a table.</p> </li> <li> <p>Lines and words of text. A LINE <code>Block</code> object contains one or more WORD <code>Block</code> objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of the <code>StartDocumentAnalysis</code> <code>FeatureTypes</code> input parameter). </p> </li> </ul> <p>Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT <code>Block</code> object contains information about a selection element, including the selection status.</p> <p>Use the <code>MaxResults</code> parameter to limit the number of blocks that are returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetDocumentAnalysis</code>, and populate the <code>NextToken</code> request parameter with the token value that's returned from the previous call to <code>GetDocumentAnalysis</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html\\\">Document Text Analysis</a>.</p>\"\
    },\
    \"GetDocumentTextDetection\":{\
      \"name\":\"GetDocumentTextDetection\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetDocumentTextDetectionRequest\"},\
      \"output\":{\"shape\":\"GetDocumentTextDetectionResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InvalidJobIdException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"}\
      ],\
      \"documentation\":\"<p>Gets the results for an Amazon Textract asynchronous operation that detects text in a document. Amazon Textract can detect lines of text and the words that make up a line of text.</p> <p>You start asynchronous text detection by calling <a>StartDocumentTextDetection</a>, which returns a job identifier (<code>JobId</code>). When the text detection operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to <code>StartDocumentTextDetection</code>. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetDocumentTextDetection</code>, and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartDocumentTextDetection</code>.</p> <p> <code>GetDocumentTextDetection</code> returns an array of <a>Block</a> objects. </p> <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p> <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetDocumentTextDetection</code>, and populate the <code>NextToken</code> request parameter with the token value that's returned from the previous call to <code>GetDocumentTextDetection</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html\\\">Document Text Detection</a>.</p>\"\
    },\
    \"GetExpenseAnalysis\":{\
      \"name\":\"GetExpenseAnalysis\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetExpenseAnalysisRequest\"},\
      \"output\":{\"shape\":\"GetExpenseAnalysisResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InvalidJobIdException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"}\
      ],\
      \"documentation\":\"<p>Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and receipts. Amazon Textract finds contact information, items purchased, and vendor name, from input invoices and receipts.</p> <p>You start asynchronous invoice/receipt analysis by calling <a>StartExpenseAnalysis</a>, which returns a job identifier (<code>JobId</code>). Upon completion of the invoice/receipt analysis, Amazon Textract publishes the completion status to the Amazon Simple Notification Service (Amazon SNS) topic. This topic must be registered in the initial call to <code>StartExpenseAnalysis</code>. To get the results of the invoice/receipt analysis operation, first ensure that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetExpenseAnalysis</code>, and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartExpenseAnalysis</code>.</p> <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetExpenseAnalysis</code>, and populate the <code>NextToken</code> request parameter with the token value that's returned from the previous call to <code>GetExpenseAnalysis</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html\\\">Analyzing Invoices and Receipts</a>.</p>\"\
    },\
    \"StartDocumentAnalysis\":{\
      \"name\":\"StartDocumentAnalysis\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StartDocumentAnalysisRequest\"},\
      \"output\":{\"shape\":\"StartDocumentAnalysisResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"IdempotentParameterMismatchException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"LimitExceededException\"}\
      ],\
      \"documentation\":\"<p>Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements.</p> <p> <code>StartDocumentAnalysis</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name of the document. </p> <p> <code>StartDocumentAnalysis</code> returns a job identifier (<code>JobId</code>) that you use to get the results of the operation. When text analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in <code>NotificationChannel</code>. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetDocumentAnalysis</a>, and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartDocumentAnalysis</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html\\\">Document Text Analysis</a>.</p>\"\
    },\
    \"StartDocumentTextDetection\":{\
      \"name\":\"StartDocumentTextDetection\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StartDocumentTextDetectionRequest\"},\
      \"output\":{\"shape\":\"StartDocumentTextDetectionResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"IdempotentParameterMismatchException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"LimitExceededException\"}\
      ],\
      \"documentation\":\"<p>Starts the asynchronous detection of text in a document. Amazon Textract can detect lines of text and the words that make up a line of text.</p> <p> <code>StartDocumentTextDetection</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name of the document. </p> <p> <code>StartTextDetection</code> returns a job identifier (<code>JobId</code>) that you use to get the results of the operation. When text detection is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in <code>NotificationChannel</code>. To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetDocumentTextDetection</a>, and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartDocumentTextDetection</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html\\\">Document Text Detection</a>.</p>\"\
    },\
    \"StartExpenseAnalysis\":{\
      \"name\":\"StartExpenseAnalysis\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StartExpenseAnalysisRequest\"},\
      \"output\":{\"shape\":\"StartExpenseAnalysisResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidS3ObjectException\"},\
        {\"shape\":\"InvalidKMSKeyException\"},\
        {\"shape\":\"UnsupportedDocumentException\"},\
        {\"shape\":\"DocumentTooLargeException\"},\
        {\"shape\":\"BadDocumentException\"},\
        {\"shape\":\"AccessDeniedException\"},\
        {\"shape\":\"ProvisionedThroughputExceededException\"},\
        {\"shape\":\"InternalServerError\"},\
        {\"shape\":\"IdempotentParameterMismatchException\"},\
        {\"shape\":\"ThrottlingException\"},\
        {\"shape\":\"LimitExceededException\"}\
      ],\
      \"documentation\":\"<p>Starts the asynchronous analysis of invoices or receipts for data like contact information, items purchased, and vendor names.</p> <p> <code>StartExpenseAnalysis</code> can analyze text in documents that are in JPEG, PNG, and PDF format. The documents must be stored in an Amazon S3 bucket. Use the <a>DocumentLocation</a> parameter to specify the name of your S3 bucket and the name of the document in that bucket. </p> <p> <code>StartExpenseAnalysis</code> returns a job identifier (<code>JobId</code>) that you will provide to <code>GetExpenseAnalysis</code> to retrieve the results of the operation. When the analysis of the input invoices/receipts is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you provide to the <code>NotificationChannel</code>. To obtain the results of the invoice and receipt analysis operation, ensure that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetExpenseAnalysis</a>, and pass the job identifier (<code>JobId</code>) that was returned by your call to <code>StartExpenseAnalysis</code>.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html\\\">Analyzing Invoices and Receipts</a>.</p>\"\
    }\
  },\
  \"shapes\":{\
    \"AccessDeniedException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>You aren't authorized to perform the action. Use the Amazon Resource Name (ARN) of an authorized user or IAM role to perform the operation.</p>\",\
      \"exception\":true\
    },\
    \"AnalyzeDocumentRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Document\",\
        \"FeatureTypes\"\
      ],\
      \"members\":{\
        \"Document\":{\
          \"shape\":\"Document\",\
          \"documentation\":\"<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an image in JPEG or PNG format.</p> <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes that are passed using the <code>Bytes</code> field. </p>\"\
        },\
        \"FeatureTypes\":{\
          \"shape\":\"FeatureTypes\",\
          \"documentation\":\"<p>A list of the types of analysis to perform. Add TABLES to the list to return information about the tables that are detected in the input document. Add FORMS to return detected form data. To perform both types of analysis, add TABLES and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are included in the response (including text that isn't related to the value of <code>FeatureTypes</code>). </p>\"\
        },\
        \"HumanLoopConfig\":{\
          \"shape\":\"HumanLoopConfig\",\
          \"documentation\":\"<p>Sets the configuration for the human in the loop workflow for analyzing documents.</p>\"\
        }\
      }\
    },\
    \"AnalyzeDocumentResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\
          \"shape\":\"DocumentMetadata\",\
          \"documentation\":\"<p>Metadata about the analyzed document. An example is the number of pages.</p>\"\
        },\
        \"Blocks\":{\
          \"shape\":\"BlockList\",\
          \"documentation\":\"<p>The items that are detected and analyzed by <code>AnalyzeDocument</code>.</p>\"\
        },\
        \"HumanLoopActivationOutput\":{\
          \"shape\":\"HumanLoopActivationOutput\",\
          \"documentation\":\"<p>Shows the results of the human in the loop evaluation.</p>\"\
        },\
        \"AnalyzeDocumentModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The version of the model used to analyze the document.</p>\"\
        }\
      }\
    },\
    \"AnalyzeExpenseRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Document\"],\
      \"members\":{\
        \"Document\":{\"shape\":\"Document\"}\
      }\
    },\
    \"AnalyzeExpenseResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\"shape\":\"DocumentMetadata\"},\
        \"ExpenseDocuments\":{\
          \"shape\":\"ExpenseDocumentList\",\
          \"documentation\":\"<p>The expenses detected by Amazon Textract.</p>\"\
        }\
      }\
    },\
    \"AnalyzeIDDetections\":{\
      \"type\":\"structure\",\
      \"required\":[\"Text\"],\
      \"members\":{\
        \"Text\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>Text of either the normalized field or value associated with it.</p>\"\
        },\
        \"NormalizedValue\":{\
          \"shape\":\"NormalizedValue\",\
          \"documentation\":\"<p>Only returned for dates, returns the type of value detected and the date written in a more machine readable way.</p>\"\
        },\
        \"Confidence\":{\
          \"shape\":\"Percent\",\
          \"documentation\":\"<p>The confidence score of the detected text.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Used to contain the information detected by an AnalyzeID operation.</p>\"\
    },\
    \"AnalyzeIDRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"DocumentPages\"],\
      \"members\":{\
        \"DocumentPages\":{\
          \"shape\":\"DocumentPages\",\
          \"documentation\":\"<p>The document being passed to AnalyzeID.</p>\"\
        }\
      }\
    },\
    \"AnalyzeIDResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"IdentityDocuments\":{\
          \"shape\":\"IdentityDocumentList\",\
          \"documentation\":\"<p>The list of documents processed by AnalyzeID. Includes a number denoting their place in the list and the response structure for the document.</p>\"\
        },\
        \"DocumentMetadata\":{\"shape\":\"DocumentMetadata\"},\
        \"AnalyzeIDModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The version of the AnalyzeIdentity API being used to process documents.</p>\"\
        }\
      }\
    },\
    \"BadDocumentException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Amazon Textract isn't able to read the document. For more information on the document limits in Amazon Textract, see <a>limits</a>.</p>\",\
      \"exception\":true\
    },\
    \"Block\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"BlockType\":{\
          \"shape\":\"BlockType\",\
          \"documentation\":\"<p>The type of text item that's recognized. In operations for text detection, the following types are returned:</p> <ul> <li> <p> <i>PAGE</i> - Contains a list of the LINE <code>Block</code> objects that are detected on a document page.</p> </li> <li> <p> <i>WORD</i> - A word detected on a document page. A word is one or more ISO basic Latin script characters that aren't separated by spaces.</p> </li> <li> <p> <i>LINE</i> - A string of tab-delimited, contiguous words that are detected on a document page.</p> </li> </ul> <p>In text analysis operations, the following types are returned:</p> <ul> <li> <p> <i>PAGE</i> - Contains a list of child <code>Block</code> objects that are detected on a document page.</p> </li> <li> <p> <i>KEY_VALUE_SET</i> - Stores the KEY and VALUE <code>Block</code> objects for linked text that's detected on a document page. Use the <code>EntityType</code> field to determine if a KEY_VALUE_SET object is a KEY <code>Block</code> object or a VALUE <code>Block</code> object. </p> </li> <li> <p> <i>WORD</i> - A word that's detected on a document page. A word is one or more ISO basic Latin script characters that aren't separated by spaces.</p> </li> <li> <p> <i>LINE</i> - A string of tab-delimited, contiguous words that are detected on a document page.</p> </li> <li> <p> <i>TABLE</i> - A table that's detected on a document page. A table is grid-based information with two or more rows or columns, with a cell span of one row and one column each. </p> </li> <li> <p> <i>CELL</i> - A cell within a detected table. The cell is the parent of the block that contains the text in the cell.</p> </li> <li> <p> <i>SELECTION_ELEMENT</i> - A selection element such as an option button (radio button) or a check box that's detected on a document page. Use the value of <code>SelectionStatus</code> to determine the status of the selection element.</p> </li> </ul>\"\
        },\
        \"Confidence\":{\
          \"shape\":\"Percent\",\
          \"documentation\":\"<p>The confidence score that Amazon Textract has in the accuracy of the recognized text and the accuracy of the geometry points around the recognized text.</p>\"\
        },\
        \"Text\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The word or line of text that's recognized by Amazon Textract. </p>\"\
        },\
        \"TextType\":{\
          \"shape\":\"TextType\",\
          \"documentation\":\"<p>The kind of text that Amazon Textract has detected. Can check for handwritten text and printed text.</p>\"\
        },\
        \"RowIndex\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The row in which a table cell is located. The first row position is 1. <code>RowIndex</code> isn't returned by <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>\"\
        },\
        \"ColumnIndex\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The column in which a table cell appears. The first column position is 1. <code>ColumnIndex</code> isn't returned by <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>\"\
        },\
        \"RowSpan\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The number of rows that a table cell spans. Currently this value is always 1, even if the number of rows spanned is greater than 1. <code>RowSpan</code> isn't returned by <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>\"\
        },\
        \"ColumnSpan\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The number of columns that a table cell spans. Currently this value is always 1, even if the number of columns spanned is greater than 1. <code>ColumnSpan</code> isn't returned by <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>. </p>\"\
        },\
        \"Geometry\":{\
          \"shape\":\"Geometry\",\
          \"documentation\":\"<p>The location of the recognized text on the image. It includes an axis-aligned, coarse bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial information. </p>\"\
        },\
        \"Id\":{\
          \"shape\":\"NonEmptyString\",\
          \"documentation\":\"<p>The identifier for the recognized text. The identifier is only unique for a single operation. </p>\"\
        },\
        \"Relationships\":{\
          \"shape\":\"RelationshipList\",\
          \"documentation\":\"<p>A list of child blocks of the current block. For example, a LINE object has child blocks for each WORD block that's part of the line of text. There aren't Relationship objects in the list for relationships that don't exist, such as when the current block has no child blocks. The list size can be the following:</p> <ul> <li> <p>0 - The block has no child blocks.</p> </li> <li> <p>1 - The block has child blocks.</p> </li> </ul>\"\
        },\
        \"EntityTypes\":{\
          \"shape\":\"EntityTypes\",\
          \"documentation\":\"<p>The type of entity. The following can be returned:</p> <ul> <li> <p> <i>KEY</i> - An identifier for a field on the document.</p> </li> <li> <p> <i>VALUE</i> - The field text.</p> </li> </ul> <p> <code>EntityTypes</code> isn't returned by <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>\"\
        },\
        \"SelectionStatus\":{\
          \"shape\":\"SelectionStatus\",\
          \"documentation\":\"<p>The selection status of a selection element, such as an option button or check box. </p>\"\
        },\
        \"Page\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The page on which a block was detected. <code>Page</code> is returned by asynchronous operations. Page values greater than 1 are only returned for multipage documents that are in PDF or TIFF format. A scanned image (JPEG/PNG), even if it contains multiple document pages, is considered to be a single-page document. The value of <code>Page</code> is always 1. Synchronous operations don't return <code>Page</code> because every input document is considered to be a single-page document.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A <code>Block</code> represents items that are recognized in a document within a group of pixels close to each other. The information returned in a <code>Block</code> object depends on the type of operation. In text detection for documents (for example <a>DetectDocumentText</a>), you get information about the detected words and lines of text. In text analysis (for example <a>AnalyzeDocument</a>), you can also get information about the fields, tables, and selection elements that are detected in the document.</p> <p>An array of <code>Block</code> objects is returned by both synchronous and asynchronous operations. In synchronous operations, such as <a>DetectDocumentText</a>, the array of <code>Block</code> objects is the entire set of results. In asynchronous operations, such as <a>GetDocumentAnalysis</a>, the array is returned over one or more responses.</p> <p>For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html\\\">How Amazon Textract Works</a>.</p>\"\
    },\
    \"BlockList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Block\"}\
    },\
    \"BlockType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"KEY_VALUE_SET\",\
        \"PAGE\",\
        \"LINE\",\
        \"WORD\",\
        \"TABLE\",\
        \"CELL\",\
        \"SELECTION_ELEMENT\"\
      ]\
    },\
    \"BoundingBox\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Width\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The width of the bounding box as a ratio of the overall document page width.</p>\"\
        },\
        \"Height\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The height of the bounding box as a ratio of the overall document page height.</p>\"\
        },\
        \"Left\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The left coordinate of the bounding box as a ratio of overall document page width.</p>\"\
        },\
        \"Top\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The top coordinate of the bounding box as a ratio of overall document page height.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The bounding box around the detected page, text, key-value pair, table, table cell, or selection element on a document page. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates that represent the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall document page size. For example, if the input image is 700 x 200 pixels, and the top-left coordinate of the bounding box is 350 x 50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p>The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall document page dimension. For example, if the document page size is 700 x 200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p>\"\
    },\
    \"ClientRequestToken\":{\
      \"type\":\"string\",\
      \"max\":64,\
      \"min\":1,\
      \"pattern\":\"^[a-zA-Z0-9-_]+$\"\
    },\
    \"ContentClassifier\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"FreeOfPersonallyIdentifiableInformation\",\
        \"FreeOfAdultContent\"\
      ]\
    },\
    \"ContentClassifiers\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ContentClassifier\"},\
      \"max\":256\
    },\
    \"DetectDocumentTextRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Document\"],\
      \"members\":{\
        \"Document\":{\
          \"shape\":\"Document\",\
          \"documentation\":\"<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an image in JPEG or PNG format.</p> <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes that are passed using the <code>Bytes</code> field. </p>\"\
        }\
      }\
    },\
    \"DetectDocumentTextResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\
          \"shape\":\"DocumentMetadata\",\
          \"documentation\":\"<p>Metadata about the document. It contains the number of pages that are detected in the document.</p>\"\
        },\
        \"Blocks\":{\
          \"shape\":\"BlockList\",\
          \"documentation\":\"<p>An array of <code>Block</code> objects that contain the text that's detected in the document.</p>\"\
        },\
        \"DetectDocumentTextModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p/>\"\
        }\
      }\
    },\
    \"Document\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Bytes\":{\
          \"shape\":\"ImageBlob\",\
          \"documentation\":\"<p>A blob of base64-encoded document bytes. The maximum size of a document that's provided in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format.</p> <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes passed using the <code>Bytes</code> field. </p>\"\
        },\
        \"S3Object\":{\
          \"shape\":\"S3Object\",\
          \"documentation\":\"<p>Identifies an S3 object as the document source. The maximum size of a document that's stored in an S3 bucket is 5 MB.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The input document, either as bytes or as an S3 object.</p> <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass a document loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64 encoded. Your code might not need to encode document file bytes if you're using an AWS SDK to call Amazon Textract API operations. </p> <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64 encoded.</p> <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS Region that you use for Amazon Textract operations.</p> <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using the Bytes property isn't supported. You must first upload the document to an Amazon S3 bucket, and then call the operation using the S3Object property.</p> <p>For Amazon Textract to process an S3 object, the user must have permission to access the S3 object. </p>\"\
    },\
    \"DocumentLocation\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"S3Object\":{\
          \"shape\":\"S3Object\",\
          \"documentation\":\"<p>The Amazon S3 bucket that contains the input document.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous operations such as <a>StartDocumentTextDetection</a>.</p> <p>The input document can be an image file in JPEG or PNG format. It can also be a file in PDF format.</p>\"\
    },\
    \"DocumentMetadata\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Pages\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The number of pages that are detected in the document.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Information about the input document.</p>\"\
    },\
    \"DocumentPages\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Document\"},\
      \"max\":2,\
      \"min\":1\
    },\
    \"DocumentTooLargeException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The document can't be processed because it's too large. The maximum document size for synchronous operations 10 MB. The maximum document size for asynchronous operations is 500 MB for PDF files.</p>\",\
      \"exception\":true\
    },\
    \"EntityType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"KEY\",\
        \"VALUE\"\
      ]\
    },\
    \"EntityTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"EntityType\"}\
    },\
    \"ErrorCode\":{\"type\":\"string\"},\
    \"ExpenseDetection\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Text\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The word or line of text recognized by Amazon Textract</p>\"\
        },\
        \"Geometry\":{\"shape\":\"Geometry\"},\
        \"Confidence\":{\
          \"shape\":\"Percent\",\
          \"documentation\":\"<p>The confidence in detection, as a percentage</p>\"\
        }\
      },\
      \"documentation\":\"<p>An object used to store information about the Value or Label detected by Amazon Textract.</p>\"\
    },\
    \"ExpenseDocument\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ExpenseIndex\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>Denotes which invoice or receipt in the document the information is coming from. First document will be 1, the second 2, and so on.</p>\"\
        },\
        \"SummaryFields\":{\
          \"shape\":\"ExpenseFieldList\",\
          \"documentation\":\"<p>Any information found outside of a table by Amazon Textract.</p>\"\
        },\
        \"LineItemGroups\":{\
          \"shape\":\"LineItemGroupList\",\
          \"documentation\":\"<p>Information detected on each table of a document, seperated into <code>LineItems</code>.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The structure holding all the information returned by AnalyzeExpense</p>\"\
    },\
    \"ExpenseDocumentList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ExpenseDocument\"}\
    },\
    \"ExpenseField\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Type\":{\
          \"shape\":\"ExpenseType\",\
          \"documentation\":\"<p>The implied label of a detected element. Present alongside LabelDetection for explicit elements.</p>\"\
        },\
        \"LabelDetection\":{\
          \"shape\":\"ExpenseDetection\",\
          \"documentation\":\"<p>The explicitly stated label of a detected element.</p>\"\
        },\
        \"ValueDetection\":{\
          \"shape\":\"ExpenseDetection\",\
          \"documentation\":\"<p>The value of a detected element. Present in explicit and implicit elements.</p>\"\
        },\
        \"PageNumber\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The page number the value was detected on.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Breakdown of detected information, seperated into the catagories Type, LabelDetection, and ValueDetection</p>\"\
    },\
    \"ExpenseFieldList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ExpenseField\"}\
    },\
    \"ExpenseType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Text\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The word or line of text detected by Amazon Textract.</p>\"\
        },\
        \"Confidence\":{\
          \"shape\":\"Percent\",\
          \"documentation\":\"<p>The confidence of accuracy, as a percentage.</p>\"\
        }\
      },\
      \"documentation\":\"<p>An object used to store information about the Type detected by Amazon Textract.</p>\"\
    },\
    \"FeatureType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"TABLES\",\
        \"FORMS\"\
      ]\
    },\
    \"FeatureTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"FeatureType\"}\
    },\
    \"Float\":{\"type\":\"float\"},\
    \"FlowDefinitionArn\":{\
      \"type\":\"string\",\
      \"max\":256\
    },\
    \"Geometry\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"BoundingBox\":{\
          \"shape\":\"BoundingBox\",\
          \"documentation\":\"<p>An axis-aligned coarse representation of the location of the recognized item on the document page.</p>\"\
        },\
        \"Polygon\":{\
          \"shape\":\"Polygon\",\
          \"documentation\":\"<p>Within the bounding box, a fine-grained polygon around the recognized item.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Information about where the following items are located on a document page: detected page, text, key-value pairs, tables, table cells, and selection elements.</p>\"\
    },\
    \"GetDocumentAnalysisRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"JobId\"],\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResults\",\
          \"documentation\":\"<p>The maximum number of results to return per paginated call. The largest value that you can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is returned. The default value is 1,000.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination token in the response. You can use this pagination token to retrieve the next set of blocks.</p>\"\
        }\
      }\
    },\
    \"GetDocumentAnalysisResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\
          \"shape\":\"DocumentMetadata\",\
          \"documentation\":\"<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is returned in every page of paginated responses from an Amazon Textract video operation.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The current status of the text detection job.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the response is truncated, Amazon Textract returns this token. You can use this token in the subsequent request to retrieve the next set of text detection results.</p>\"\
        },\
        \"Blocks\":{\
          \"shape\":\"BlockList\",\
          \"documentation\":\"<p>The results of the text-analysis operation.</p>\"\
        },\
        \"Warnings\":{\
          \"shape\":\"Warnings\",\
          \"documentation\":\"<p>A list of warnings that occurred during the document-analysis operation.</p>\"\
        },\
        \"StatusMessage\":{\
          \"shape\":\"StatusMessage\",\
          \"documentation\":\"<p>Returns if the detection job could not be completed. Contains explanation for what error occured.</p>\"\
        },\
        \"AnalyzeDocumentModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p/>\"\
        }\
      }\
    },\
    \"GetDocumentTextDetectionRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"JobId\"],\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResults\",\
          \"documentation\":\"<p>The maximum number of results to return per paginated call. The largest value you can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is returned. The default value is 1,000.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination token in the response. You can use this pagination token to retrieve the next set of blocks.</p>\"\
        }\
      }\
    },\
    \"GetDocumentTextDetectionResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\
          \"shape\":\"DocumentMetadata\",\
          \"documentation\":\"<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is returned in every page of paginated responses from an Amazon Textract video operation.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The current status of the text detection job.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the response is truncated, Amazon Textract returns this token. You can use this token in the subsequent request to retrieve the next set of text-detection results.</p>\"\
        },\
        \"Blocks\":{\
          \"shape\":\"BlockList\",\
          \"documentation\":\"<p>The results of the text-detection operation.</p>\"\
        },\
        \"Warnings\":{\
          \"shape\":\"Warnings\",\
          \"documentation\":\"<p>A list of warnings that occurred during the text-detection operation for the document.</p>\"\
        },\
        \"StatusMessage\":{\
          \"shape\":\"StatusMessage\",\
          \"documentation\":\"<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>\"\
        },\
        \"DetectDocumentTextModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p/>\"\
        }\
      }\
    },\
    \"GetExpenseAnalysisRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"JobId\"],\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResults\",\
          \"documentation\":\"<p>The maximum number of results to return per paginated call. The largest value you can specify is 20. If you specify a value greater than 20, a maximum of 20 results is returned. The default value is 20.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination token in the response. You can use this pagination token to retrieve the next set of blocks.</p>\"\
        }\
      }\
    },\
    \"GetExpenseAnalysisResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentMetadata\":{\
          \"shape\":\"DocumentMetadata\",\
          \"documentation\":\"<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is returned in every page of paginated responses from an Amazon Textract operation.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The current status of the text detection job.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationToken\",\
          \"documentation\":\"<p>If the response is truncated, Amazon Textract returns this token. You can use this token in the subsequent request to retrieve the next set of text-detection results.</p>\"\
        },\
        \"ExpenseDocuments\":{\
          \"shape\":\"ExpenseDocumentList\",\
          \"documentation\":\"<p>The expenses detected by Amazon Textract.</p>\"\
        },\
        \"Warnings\":{\
          \"shape\":\"Warnings\",\
          \"documentation\":\"<p>A list of warnings that occurred during the text-detection operation for the document.</p>\"\
        },\
        \"StatusMessage\":{\
          \"shape\":\"StatusMessage\",\
          \"documentation\":\"<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>\"\
        },\
        \"AnalyzeExpenseModelVersion\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The current model version of AnalyzeExpense.</p>\"\
        }\
      }\
    },\
    \"HumanLoopActivationConditionsEvaluationResults\":{\
      \"type\":\"string\",\
      \"max\":10240\
    },\
    \"HumanLoopActivationOutput\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"HumanLoopArn\":{\
          \"shape\":\"HumanLoopArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>\"\
        },\
        \"HumanLoopActivationReasons\":{\
          \"shape\":\"HumanLoopActivationReasons\",\
          \"documentation\":\"<p>Shows if and why human review was needed.</p>\"\
        },\
        \"HumanLoopActivationConditionsEvaluationResults\":{\
          \"shape\":\"HumanLoopActivationConditionsEvaluationResults\",\
          \"documentation\":\"<p>Shows the result of condition evaluations, including those conditions which activated a human review.</p>\",\
          \"jsonvalue\":true\
        }\
      },\
      \"documentation\":\"<p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the input did not trigger human review.</p>\"\
    },\
    \"HumanLoopActivationReason\":{\"type\":\"string\"},\
    \"HumanLoopActivationReasons\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"HumanLoopActivationReason\"},\
      \"min\":1\
    },\
    \"HumanLoopArn\":{\
      \"type\":\"string\",\
      \"max\":256\
    },\
    \"HumanLoopConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"HumanLoopName\",\
        \"FlowDefinitionArn\"\
      ],\
      \"members\":{\
        \"HumanLoopName\":{\
          \"shape\":\"HumanLoopName\",\
          \"documentation\":\"<p>The name of the human workflow used for this image. This should be kept unique within a region.</p>\"\
        },\
        \"FlowDefinitionArn\":{\
          \"shape\":\"FlowDefinitionArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the flow definition.</p>\"\
        },\
        \"DataAttributes\":{\
          \"shape\":\"HumanLoopDataAttributes\",\
          \"documentation\":\"<p>Sets attributes of the input data.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Sets up the human review workflow the document will be sent to if one of the conditions is met. You can also set certain attributes of the image before review. </p>\"\
    },\
    \"HumanLoopDataAttributes\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ContentClassifiers\":{\
          \"shape\":\"ContentClassifiers\",\
          \"documentation\":\"<p>Sets whether the input image is free of personally identifiable information or adult content.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Allows you to set attributes of the image. Currently, you can declare an image as free of personally identifiable information and adult content. </p>\"\
    },\
    \"HumanLoopName\":{\
      \"type\":\"string\",\
      \"max\":63,\
      \"min\":1,\
      \"pattern\":\"^[a-z0-9](-*[a-z0-9])*\"\
    },\
    \"HumanLoopQuotaExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ResourceType\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The resource type.</p>\"\
        },\
        \"QuotaCode\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The quota code.</p>\"\
        },\
        \"ServiceCode\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The service code.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Indicates you have exceeded the maximum number of active human in the loop workflows available</p>\",\
      \"exception\":true\
    },\
    \"IdList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"NonEmptyString\"}\
    },\
    \"IdempotentParameterMismatchException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation. </p>\",\
      \"exception\":true\
    },\
    \"IdentityDocument\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DocumentIndex\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>Denotes the placement of a document in the IdentityDocument list. The first document is marked 1, the second 2 and so on.</p>\"\
        },\
        \"IdentityDocumentFields\":{\
          \"shape\":\"IdentityDocumentFieldList\",\
          \"documentation\":\"<p>The structure used to record information extracted from identity documents. Contains both normalized field and value of the extracted text.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The structure that lists each document processed in an AnalyzeID operation.</p>\"\
    },\
    \"IdentityDocumentField\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Type\":{\"shape\":\"AnalyzeIDDetections\"},\
        \"ValueDetection\":{\"shape\":\"AnalyzeIDDetections\"}\
      },\
      \"documentation\":\"<p>Structure containing both the normalized type of the extracted information and the text associated with it. These are extracted as Type and Value respectively.</p>\"\
    },\
    \"IdentityDocumentFieldList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"IdentityDocumentField\"}\
    },\
    \"IdentityDocumentList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"IdentityDocument\"}\
    },\
    \"ImageBlob\":{\
      \"type\":\"blob\",\
      \"max\":10485760,\
      \"min\":1\
    },\
    \"InternalServerError\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Amazon Textract experienced a service issue. Try your call again.</p>\",\
      \"exception\":true,\
      \"fault\":true\
    },\
    \"InvalidJobIdException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>An invalid job identifier was passed to <a>GetDocumentAnalysis</a> or to <a>GetDocumentAnalysis</a>.</p>\",\
      \"exception\":true\
    },\
    \"InvalidKMSKeyException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p> Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key was entered incorrectly. </p>\",\
      \"exception\":true\
    },\
    \"InvalidParameterException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>An input parameter violated a constraint. For example, in synchronous operations, an <code>InvalidParameterException</code> exception occurs when neither of the <code>S3Object</code> or <code>Bytes</code> values are supplied in the <code>Document</code> request parameter. Validate your parameter before calling the API operation again.</p>\",\
      \"exception\":true\
    },\
    \"InvalidS3ObjectException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Amazon Textract is unable to access the S3 object that's specified in the request. for more information, <a href=\\\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html\\\">Configure Access to Amazon S3</a> For troubleshooting information, see <a href=\\\"https://docs.aws.amazon.com/AmazonS3/latest/dev/troubleshooting.html\\\">Troubleshooting Amazon S3</a> </p>\",\
      \"exception\":true\
    },\
    \"JobId\":{\
      \"type\":\"string\",\
      \"max\":64,\
      \"min\":1,\
      \"pattern\":\"^[a-zA-Z0-9-_]+$\"\
    },\
    \"JobStatus\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"IN_PROGRESS\",\
        \"SUCCEEDED\",\
        \"FAILED\",\
        \"PARTIAL_SUCCESS\"\
      ]\
    },\
    \"JobTag\":{\
      \"type\":\"string\",\
      \"max\":64,\
      \"min\":1,\
      \"pattern\":\"[a-zA-Z0-9_.\\\\-:]+\"\
    },\
    \"KMSKeyId\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":1,\
      \"pattern\":\"^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$\"\
    },\
    \"LimitExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>An Amazon Textract service limit was exceeded. For example, if you start too many asynchronous jobs concurrently, calls to start operations (<code>StartDocumentTextDetection</code>, for example) raise a LimitExceededException exception (HTTP status code: 400) until the number of concurrently running jobs is below the Amazon Textract service limit. </p>\",\
      \"exception\":true\
    },\
    \"LineItemFields\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"LineItemExpenseFields\":{\
          \"shape\":\"ExpenseFieldList\",\
          \"documentation\":\"<p>ExpenseFields used to show information from detected lines on a table.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A structure that holds information about the different lines found in a document's tables.</p>\"\
    },\
    \"LineItemGroup\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"LineItemGroupIndex\":{\
          \"shape\":\"UInteger\",\
          \"documentation\":\"<p>The number used to identify a specific table in a document. The first table encountered will have a LineItemGroupIndex of 1, the second 2, etc.</p>\"\
        },\
        \"LineItems\":{\
          \"shape\":\"LineItemList\",\
          \"documentation\":\"<p>The breakdown of information on a particular line of a table. </p>\"\
        }\
      },\
      \"documentation\":\"<p>A grouping of tables which contain LineItems, with each table identified by the table's <code>LineItemGroupIndex</code>.</p>\"\
    },\
    \"LineItemGroupList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"LineItemGroup\"}\
    },\
    \"LineItemList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"LineItemFields\"}\
    },\
    \"MaxResults\":{\
      \"type\":\"integer\",\
      \"min\":1\
    },\
    \"NonEmptyString\":{\
      \"type\":\"string\",\
      \"pattern\":\".*\\\\S.*\"\
    },\
    \"NormalizedValue\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Value\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The value of the date, written as Year-Month-DayTHour:Minute:Second.</p>\"\
        },\
        \"ValueType\":{\
          \"shape\":\"ValueType\",\
          \"documentation\":\"<p>The normalized type of the value detected. In this case, DATE.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information relating to dates in a document, including the type of value, and the value.</p>\"\
    },\
    \"NotificationChannel\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"SNSTopicArn\",\
        \"RoleArn\"\
      ],\
      \"members\":{\
        \"SNSTopicArn\":{\
          \"shape\":\"SNSTopicArn\",\
          \"documentation\":\"<p>The Amazon SNS topic that Amazon Textract posts the completion status to.</p>\"\
        },\
        \"RoleArn\":{\
          \"shape\":\"RoleArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. </p>\"\
        }\
      },\
      \"documentation\":\"<p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of an asynchronous document operation, such as <a>StartDocumentTextDetection</a>. </p>\"\
    },\
    \"OutputConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\"S3Bucket\"],\
      \"members\":{\
        \"S3Bucket\":{\
          \"shape\":\"S3Bucket\",\
          \"documentation\":\"<p>The name of the bucket your output will go to.</p>\"\
        },\
        \"S3Prefix\":{\
          \"shape\":\"S3ObjectName\",\
          \"documentation\":\"<p>The prefix of the object key that the output will be saved to. When not enabled, the prefix will be âtextract_output\\\".</p>\"\
        }\
      },\
      \"documentation\":\"<p>Sets whether or not your output will go to a user created bucket. Used to set the name of the bucket, and the prefix on the output file.</p> <p> <code>OutputConfig</code> is an optional parameter which lets you adjust where your output will be placed. By default, Amazon Textract will store the results internally and can only be accessed by the Get API operations. With OutputConfig enabled, you can set the name of the bucket the output will be sent to and the file prefix of the results where you can download your results. Additionally, you can set the <code>KMSKeyID</code> parameter to a customer master key (CMK) to encrypt your output. Without this parameter set Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p> <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href=\\\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\\\"> Managing AI services opt-out policy. </a> </p> <p>For more information on data privacy, see the <a href=\\\"https://aws.amazon.com/compliance/data-privacy-faq/\\\">Data Privacy FAQ</a>.</p>\"\
    },\
    \"Pages\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UInteger\"}\
    },\
    \"PaginationToken\":{\
      \"type\":\"string\",\
      \"max\":255,\
      \"min\":1,\
      \"pattern\":\".*\\\\S.*\"\
    },\
    \"Percent\":{\
      \"type\":\"float\",\
      \"max\":100,\
      \"min\":0\
    },\
    \"Point\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"X\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>\"\
        },\
        \"Y\":{\
          \"shape\":\"Float\",\
          \"documentation\":\"<p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The X and Y coordinates of a point on a document page. The X and Y values that are returned are ratios of the overall document page size. For example, if the input document is 700 x 200 and the operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the document page.</p> <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned by <a>DetectDocumentText</a>. <code>Polygon</code> represents a fine-grained polygon around detected text. For more information, see Geometry in the Amazon Textract Developer Guide. </p>\"\
    },\
    \"Polygon\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Point\"}\
    },\
    \"ProvisionedThroughputExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Textract.</p>\",\
      \"exception\":true\
    },\
    \"Relationship\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Type\":{\
          \"shape\":\"RelationshipType\",\
          \"documentation\":\"<p>The type of relationship that the blocks in the IDs array have with the current block. The relationship can be <code>VALUE</code> or <code>CHILD</code>. A relationship of type VALUE is a list that contains the ID of the VALUE block that's associated with the KEY of a key-value pair. A relationship of type CHILD is a list of IDs that identify WORD blocks in the case of lines Cell blocks in the case of Tables, and WORD blocks in the case of Selection Elements.</p>\"\
        },\
        \"Ids\":{\
          \"shape\":\"IdList\",\
          \"documentation\":\"<p>An array of IDs for related blocks. You can get the type of the relationship from the <code>Type</code> element.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Information about how blocks are related to each other. A <code>Block</code> object contains 0 or more <code>Relation</code> objects in a list, <code>Relationships</code>. For more information, see <a>Block</a>.</p> <p>The <code>Type</code> element provides the type of the relationship for all blocks in the <code>IDs</code> array. </p>\"\
    },\
    \"RelationshipList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Relationship\"}\
    },\
    \"RelationshipType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"VALUE\",\
        \"CHILD\",\
        \"COMPLEX_FEATURES\"\
      ]\
    },\
    \"RoleArn\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":20,\
      \"pattern\":\"arn:([a-z\\\\d-]+):iam::\\\\d{12}:role/?[a-zA-Z_0-9+=,.@\\\\-_/]+\"\
    },\
    \"S3Bucket\":{\
      \"type\":\"string\",\
      \"max\":255,\
      \"min\":3,\
      \"pattern\":\"[0-9A-Za-z\\\\.\\\\-_]*\"\
    },\
    \"S3Object\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Bucket\":{\
          \"shape\":\"S3Bucket\",\
          \"documentation\":\"<p>The name of the S3 bucket. Note that the # character is not valid in the file name.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"S3ObjectName\",\
          \"documentation\":\"<p>The file name of the input document. Synchronous operations can use image files that are in JPEG or PNG format. Asynchronous operations also support PDF and TIFF format files.</p>\"\
        },\
        \"Version\":{\
          \"shape\":\"S3ObjectVersion\",\
          \"documentation\":\"<p>If the bucket has versioning enabled, you can specify the object version. </p>\"\
        }\
      },\
      \"documentation\":\"<p>The S3 bucket name and file name that identifies the document.</p> <p>The AWS Region for the S3 bucket that contains the document must match the Region that you use for Amazon Textract operations.</p> <p>For Amazon Textract to process a file in an S3 bucket, the user must have permission to access the S3 bucket and file. </p>\"\
    },\
    \"S3ObjectName\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":1,\
      \"pattern\":\".*\\\\S.*\"\
    },\
    \"S3ObjectVersion\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":1,\
      \"pattern\":\".*\\\\S.*\"\
    },\
    \"SNSTopicArn\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":20,\
      \"pattern\":\"(^arn:([a-z\\\\d-]+):sns:[a-zA-Z\\\\d-]{1,20}:\\\\w{12}:.+$)\"\
    },\
    \"SelectionStatus\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SELECTED\",\
        \"NOT_SELECTED\"\
      ]\
    },\
    \"StartDocumentAnalysisRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"DocumentLocation\",\
        \"FeatureTypes\"\
      ],\
      \"members\":{\
        \"DocumentLocation\":{\
          \"shape\":\"DocumentLocation\",\
          \"documentation\":\"<p>The location of the document to be processed.</p>\"\
        },\
        \"FeatureTypes\":{\
          \"shape\":\"FeatureTypes\",\
          \"documentation\":\"<p>A list of the types of analysis to perform. Add TABLES to the list to return information about the tables that are detected in the input document. Add FORMS to return detected form data. To perform both types of analysis, add TABLES and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are included in the response (including text that isn't related to the value of <code>FeatureTypes</code>). </p>\"\
        },\
        \"ClientRequestToken\":{\
          \"shape\":\"ClientRequestToken\",\
          \"documentation\":\"<p>The idempotent token that you use to identify the start request. If you use the same token with multiple <code>StartDocumentAnalysis</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\\\">Calling Amazon Textract Asynchronous Operations</a>.</p>\"\
        },\
        \"JobTag\":{\
          \"shape\":\"JobTag\",\
          \"documentation\":\"<p>An identifier that you specify that's included in the completion notification published to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of document that the completion notification corresponds to (such as a tax form or a receipt).</p>\"\
        },\
        \"NotificationChannel\":{\
          \"shape\":\"NotificationChannel\",\
          \"documentation\":\"<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the operation to. </p>\"\
        },\
        \"OutputConfig\":{\
          \"shape\":\"OutputConfig\",\
          \"documentation\":\"<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save the results internally to be accessed by the GetDocumentAnalysis operation.</p>\"\
        },\
        \"KMSKeyId\":{\
          \"shape\":\"KMSKeyId\",\
          \"documentation\":\"<p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of the objects in the customer bucket. When this parameter is not enabled, the result will be encrypted server side,using SSE-S3.</p>\"\
        }\
      }\
    },\
    \"StartDocumentAnalysisResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The identifier for the document text detection job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        }\
      }\
    },\
    \"StartDocumentTextDetectionRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"DocumentLocation\"],\
      \"members\":{\
        \"DocumentLocation\":{\
          \"shape\":\"DocumentLocation\",\
          \"documentation\":\"<p>The location of the document to be processed.</p>\"\
        },\
        \"ClientRequestToken\":{\
          \"shape\":\"ClientRequestToken\",\
          \"documentation\":\"<p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\\\">Calling Amazon Textract Asynchronous Operations</a>.</p>\"\
        },\
        \"JobTag\":{\
          \"shape\":\"JobTag\",\
          \"documentation\":\"<p>An identifier that you specify that's included in the completion notification published to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of document that the completion notification corresponds to (such as a tax form or a receipt).</p>\"\
        },\
        \"NotificationChannel\":{\
          \"shape\":\"NotificationChannel\",\
          \"documentation\":\"<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the operation to. </p>\"\
        },\
        \"OutputConfig\":{\
          \"shape\":\"OutputConfig\",\
          \"documentation\":\"<p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will save the results internally to be accessed with the GetDocumentTextDetection operation.</p>\"\
        },\
        \"KMSKeyId\":{\
          \"shape\":\"KMSKeyId\",\
          \"documentation\":\"<p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of the objects in the customer bucket. When this parameter is not enabled, the result will be encrypted server side,using SSE-S3.</p>\"\
        }\
      }\
    },\
    \"StartDocumentTextDetectionResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The identifier of the text detection job for the document. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        }\
      }\
    },\
    \"StartExpenseAnalysisRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"DocumentLocation\"],\
      \"members\":{\
        \"DocumentLocation\":{\
          \"shape\":\"DocumentLocation\",\
          \"documentation\":\"<p>The location of the document to be processed.</p>\"\
        },\
        \"ClientRequestToken\":{\
          \"shape\":\"ClientRequestToken\",\
          \"documentation\":\"<p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. For more information, see <a href=\\\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\\\">Calling Amazon Textract Asynchronous Operations</a> </p>\"\
        },\
        \"JobTag\":{\
          \"shape\":\"JobTag\",\
          \"documentation\":\"<p>An identifier you specify that's included in the completion notification published to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of document that the completion notification corresponds to (such as a tax form or a receipt).</p>\"\
        },\
        \"NotificationChannel\":{\
          \"shape\":\"NotificationChannel\",\
          \"documentation\":\"<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the operation to. </p>\"\
        },\
        \"OutputConfig\":{\
          \"shape\":\"OutputConfig\",\
          \"documentation\":\"<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save the results internally to be accessed by the <code>GetExpenseAnalysis</code> operation.</p>\"\
        },\
        \"KMSKeyId\":{\
          \"shape\":\"KMSKeyId\",\
          \"documentation\":\"<p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of the objects in the customer bucket. When this parameter is not enabled, the result will be encrypted server side,using SSE-S3.</p>\"\
        }\
      }\
    },\
    \"StartExpenseAnalysisResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>\"\
        }\
      }\
    },\
    \"StatusMessage\":{\"type\":\"string\"},\
    \"String\":{\"type\":\"string\"},\
    \"TextType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"HANDWRITING\",\
        \"PRINTED\"\
      ]\
    },\
    \"ThrottlingException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Amazon Textract is temporarily unable to process the request. Try your call again.</p>\",\
      \"exception\":true,\
      \"fault\":true\
    },\
    \"UInteger\":{\
      \"type\":\"integer\",\
      \"min\":0\
    },\
    \"UnsupportedDocumentException\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The format of the input document isn't supported. Documents for synchronous operations can be in PNG or JPEG format only. Documents for asynchronous operations can be in PDF format.</p>\",\
      \"exception\":true\
    },\
    \"ValueType\":{\
      \"type\":\"string\",\
      \"enum\":[\"DATE\"]\
    },\
    \"Warning\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ErrorCode\":{\
          \"shape\":\"ErrorCode\",\
          \"documentation\":\"<p>The error code for the warning.</p>\"\
        },\
        \"Pages\":{\
          \"shape\":\"Pages\",\
          \"documentation\":\"<p>A list of the pages that the warning applies to.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A warning about an issue that occurred during asynchronous text analysis (<a>StartDocumentAnalysis</a>) or asynchronous document text detection (<a>StartDocumentTextDetection</a>). </p>\"\
    },\
    \"Warnings\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Warning\"}\
    }\
  },\
  \"documentation\":\"<p>Amazon Textract detects and analyzes text in documents and converts it into machine-readable text. This is the API reference documentation for Amazon Textract.</p>\"\
}\
";
}

@end
