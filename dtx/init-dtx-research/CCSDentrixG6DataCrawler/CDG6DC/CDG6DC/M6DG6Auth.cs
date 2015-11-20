namespace CDG6DC
{
    /// <summary>
    /// Dentrix G6 Authenticator
    /// </summary>
    class M6DG6Auth
    {
        /**
         * Function Name: DENTRIXAPI_RegisterUser
         * Availability: Dentrix G6.2 and above
         * Parameters: Key File Path (STRING)
         * Returns:    -1 = General Failure to load local requirements
         *              0 = Success
         *              1 = User canceled Auth
         *              2 = Invalid Auth request
         *              3 = Invalid File Auth File
         *              4 = Unable to connect to DB
         *              5 = Local admin rights could not be secured
         *              6 = User insertion failed
         *              7 = User access has been revoked
         *              8 = Invalid Certificate
         **/

        public enum D6AuthResult
        {
            FAILURE,
            SUCCESS,
            CANCELLED,
            INVALID,
            UNABLE2CONNECT,
            NO_ADMIN_RIGHTS,
            INSERT_FAILED,
            ACCESS_REVOKED,
            INVALID_CERT,
            UNKNOWN
        }
        D6AuthResult AuthenticateUser(string keyFilePath)
        {
            D6AuthResult result = D6AuthResult.SUCCESS;
            switch (result)
            {
                case D6AuthResult.FAILURE:
                    break;
                case D6AuthResult.SUCCESS:
                    break;
                case D6AuthResult.CANCELLED:
                    break;
                default:
                    M6DG6DCrawler.m6dg6Logger.WriteLine("Unexpected error => " + result);
                    break;

            }
            return D6AuthResult.UNKNOWN;
        }
    }
}
